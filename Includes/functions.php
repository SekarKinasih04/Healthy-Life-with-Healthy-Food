<?php
function call_llm_api($data) {
    $url = "https://api.groq.com/openai/v1"; // Ganti dengan URL API yang benar
    $options = array(
        'http' => array(
            'header'  => "Content-type: application/x-www-form-urlencoded\r\n",
            'method'  => 'POST',
            'content' => http_build_query($data),
            'timeout' => 30  // Tambahkan timeout
        ),
    );
    $context  = stream_context_create($options);
    $result = @file_get_contents($url, false, $context);

    if ($result === FALSE) {
        return null; // Handle error
    }

    return json_decode($result, true);
}

function get_nutrition_recommendation($user_data) {
    $response = call_llm_api($user_data);

    if ($response === null || !isset($response['description']) || !isset($response['menu_ids'])) {
        return [
            'description' => 'Maaf, terjadi kesalahan saat mendapatkan rekomendasi.',
            'menus' => []
        ];
    }

    $recommendation = [
        'description' => $response['description'],
        'menus' => []
    ];

    foreach ($response['menu_ids'] as $menu_id) {
        global $conn;
        $sql = "SELECT * FROM Menu WHERE id = $menu_id";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $recommendation['menus'][] = $row;
        }
    }

    return $recommendation;
}
?>
