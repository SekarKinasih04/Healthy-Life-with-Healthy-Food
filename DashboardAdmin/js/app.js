document.addEventListener('DOMContentLoaded', function () {
    const createChart = (selector, options) => {
        const ctx = document.querySelector(selector);
        if (!ctx) {
            console.error('Element not found:', selector);
            return;
        }
        return new ApexCharts(ctx, options).render();
    };
    const fetchDataAndRenderChart = (url, selector, chartOptions) => {
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.json();
            })
            .then(data => {
                if (data.error) {
                    console.error(`Error from server: ${data.error}`);
                    return;
                }
                chartOptions.series = chartOptions.series(data);
                chartOptions.xaxis.categories = chartOptions.xaxis.categories(data);
                createChart(selector, chartOptions);
            })
            .catch(error => console.error(`Error fetching data from ${url}:`, error));
    };

    const setupTablePagination = (tableId, paginationId, rowsPerPage) => {
        const table = document.getElementById(tableId);
        if (!table) {
            console.error(`Table with ID ${tableId} not found`);
            return;
        }
        const tbody = table.getElementsByTagName('tbody')[0];
        const rows = tbody.getElementsByTagName('tr');
        const rowsCount = rows.length;
        const pageCount = Math.ceil(rowsCount / rowsPerPage);
        const paginationContainer = document.getElementById(paginationId);

        let currentPage = 0;

        function displayRows(start, end) {
            for (let i = 0; i < rowsCount; i++) {
                rows[i].style.display = (i >= start && i < end) ? '' : 'none';
            }
        }

        function updatePagination() {
            paginationContainer.innerHTML = '';

            const prevButton = document.createElement('button');
            prevButton.innerText = 'Previous';
            prevButton.addEventListener('click', function () {
                if (currentPage > 0) {
                    currentPage--;
                    updatePagination();
                }
            });
            paginationContainer.appendChild(prevButton);

            const pageNumbers = document.createElement('div');
            pageNumbers.className = 'page-numbers';
            paginationContainer.appendChild(pageNumbers);

            const nextButton = document.createElement('button');
            nextButton.innerText = 'Next';
            nextButton.addEventListener('click', function () {
                if (currentPage < pageCount - 1) {
                    currentPage++;
                    updatePagination();
                }
            });
            paginationContainer.appendChild(nextButton);

            let startPage = Math.max(0, currentPage - 4);
            let endPage = Math.min(pageCount, currentPage + 5);

            for (let i = startPage; i < endPage; i++) {
                const btn = document.createElement('button');
                btn.innerText = i + 1;
                btn.addEventListener('click', function () {
                    currentPage = i;
                    updatePagination();
                });
                if (i === currentPage) {
                    btn.classList.add('active');
                }
                pageNumbers.appendChild(btn);
            }

            displayRows(currentPage * rowsPerPage, (currentPage + 1) * rowsPerPage);
        }

        displayRows(0, rowsPerPage);
        updatePagination();

        
    };

    setupTablePagination('umkmTableBerhasil', 'paginationUmkmBerhasil', 5);
    setupTablePagination('umkmTableMenunggu', 'paginationUmkmMenunggu', 5);
    setupTablePagination('umkmTableDitolak', 'paginationUmkmDitolak', 5);
    setupTablePagination('transaksiMakananTableBerhasil', 'paginationBerhasil', 5);
    setupTablePagination('transaksiMakananTableMenunggu', 'paginationMenunggu', 5);
    setupTablePagination('transaksiMakananTableDitolak', 'paginationDitolak', 5);
    setupTablePagination('transaksiEventTableBerhasil', 'paginationEventBerhasil', 5);
    setupTablePagination('transaksiEventTableMenunggu', 'paginationEventMenunggu', 5);
    setupTablePagination('transaksiEventTableDitolak', 'paginationEventDitolak', 5);
    setupTablePagination('menuTable', 'paginationMenu', 10);
    setupTablePagination('artikelTable', 'paginationArtikel', 5);
    setupTablePagination('eventTable', 'paginationEvent', 5);
    setupTablePagination('userTable', 'paginationUser', 5);


    // ini masuk chart
const heatmapChartOptions = () => ({
    chart: {
        type: 'heatmap',
        height: 350
    },
    series: [],
    plotOptions: {
        heatmap: {
            shadeIntensity: 0.5,
            colorScale: {
                ranges: [{
                    from: 0,
                    to: 5,
                    color: '#00A100',
                    name: 'low'
                },
                {
                    from: 6,
                    to: 10,
                    color: '#128FD9',
                    name: 'medium'
                },
                {
                    from: 11,
                    to: 20,
                    color: '#FFB200',
                    name: 'high'
                },
                {
                    from: 21,
                    to: 30,
                    color: '#FF0000',
                    name: 'extreme'
                }]
            }
        }
    },
    dataLabels: {
        enabled: true,
        style: {
            colors: ['#fff']
        }
    },
    xaxis: {
        categories: []
    },
    yaxis: {
        labels: {
            formatter: function (value) {
                return `Rp ${value}`;
            }
        }
    },
    title: {
        text: 'Heatmap of Event Ticket Prices and Sales'
    }
});

const fetchAndRenderHeatmapChart = (url, selector, chartOptions) => {
    fetch(url)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            if (data.error) {
                console.error(`Error from server: ${data.error}`);
                return;
            }

            // Group data by month and price range
            const salesByMonthAndPrice = {};
            const priceRanges = [];

            data.forEach(item => {
                const priceRange = Math.floor(item.Harga_Tiket / 10000) * 10000; // Group prices into ranges of 10000
                const month = item.Month;
                if (!salesByMonthAndPrice[month]) {
                    salesByMonthAndPrice[month] = {};
                }
                if (!salesByMonthAndPrice[month][priceRange]) {
                    salesByMonthAndPrice[month][priceRange] = 0;
                }
                salesByMonthAndPrice[month][priceRange] += item.Jumlah_Tiket;
                if (!priceRanges.includes(priceRange)) {
                    priceRanges.push(priceRange);
                }
            });

            priceRanges.sort((a, b) => a - b); // Sort price ranges

            const seriesData = priceRanges.map(priceRange => ({
                name: `Rp ${priceRange.toLocaleString()} - Rp ${(priceRange + 10000).toLocaleString()}`,
                data: Object.keys(salesByMonthAndPrice).map(month => ({
                    x: month,
                    y: salesByMonthAndPrice[month][priceRange] || 0
                }))
            }));

            chartOptions.series = seriesData;

            // Ensure the months are sorted correctly
            const months = [...new Set(data.map(item => item.Month))].sort();
            chartOptions.xaxis.categories = months;

            createChart(selector, chartOptions);
        })
        .catch(error => console.error(`Error fetching data from ${url}:`, error));
};

fetchAndRenderHeatmapChart('./FetchData/fetch_event_harga.php', "#eventHargaChart", heatmapChartOptions());

    const lineChartOptions = (name, color) => ({
        chart: {
            type: 'line',
            height: 350
            
        },
        series: (data) => [{
            name: name,
            data: data.map(item => item.total)
        }],
        xaxis: {
            categories: (data) => data.map(item => item.month)
        },
        stroke: {
            curve: 'smooth',
            width: [4]
        },
        colors: [color],
        dataLabels: {
            enabled: false
        },
        markers: {
            size: 5, // Increase or decrease as needed
            colors: [color],
            strokeWidth: 2,
            hover: {
                size: 7
            }
        },
        tooltip: {
            shared: true,
            intersect: false,
            x: {
                show: true
            },
            y: {
                formatter: function (value) {
                    return value;
                }
            }
        },
        legend: {
            horizontalAlign: 'left',
            offsetX: 40
        }

    });
    const processUMKMChartData = (data) => {
        const totalData = data.map(item => item.total);
        const categories = data.map(item => item.month);

        return {
            series: [
                { name: 'UMKM Masuk', data: totalData }
            ],
            categories: categories
        };
    };

    fetchDataAndRenderChart('./FetchData/fetch_umkm_traffic.php', "#umkmTrafficChart", lineChartOptions('UMKM Masuk', '#6ab04c'), processUMKMChartData);
    fetchDataAndRenderChart('./FetchData/fetch_makanan_traffic.php', "#makananTrafficChart", lineChartOptions('Revenue Makanan', '#6ab04c'));
    fetchDataAndRenderChart('./FetchData/fetch_makanan_jumlah.php', "#jumlahMenuChart", lineChartOptions('Jumlah Menu Terjual', '#2980b9'));
    fetchDataAndRenderChart('./FetchData/fetch_event_traffic.php', "#eventTrafficChart", lineChartOptions('Revenue Event', '#5d782e'));
    fetchDataAndRenderChart('./FetchData/fetch_event_jumlah.php', "#jumlahEventChart", lineChartOptions('Jumlah Tiket Terjual', '#2980b9'));
   

    const donutChartOptions = (colors) => ({
        chart: {
            type: 'donut',
            height: 350
        },
        series: [],
        labels: [],
        colors: colors,
        dataLabels: {
            enabled: true,
            formatter: function (val) {
                return val.toFixed(2) + "%";
            }
        }
    });

    const fetchAndRenderDonutChart = (url, selector, chartOptions, labelMapper) => {
        fetch(url)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.json();
            })
            .then(data => {
                if (data.error) {
                    console.error(`Error from server: ${data.error}`);
                    return;
                }
                chartOptions.series = data.map(item => parseFloat(item.total)); // Ensure the data is in the correct format (float)
                chartOptions.labels = data.map(labelMapper);
                createChart(selector, chartOptions);
            })
            .catch(error => console.error(`Error fetching data from ${url}:`, error));
    };


    fetchAndRenderDonutChart('./FetchData/fetch_makanan_category.php', "#makananCategoryChart", donutChartOptions(["#6ab04c", "#2980b9", "#f39c12", "#d35400", "#8e44ad"]), item => item.Tipe);
    fetchAndRenderDonutChart('./FetchData/fetch_makanan_wilayah.php', "#makananWilayahChart", donutChartOptions(["#6ab04c", "#2980b9", "#f39c12", "#d35400", "#8e44ad"]), item => item.Kota_Kabupaten);
    fetchAndRenderDonutChart('./FetchData/fetch_event_wilayah.php', "#eventWilayahChart", donutChartOptions(["#6ab04c", "#2980b9", "#f39c12", "#d35400", "#8e44ad"]), item => item.Kota_Event);
    fetchAndRenderDonutChart(
        './FetchData/fetch_umkm_lokasi.php',
        "#umkmLokasiChart",
        donutChartOptions(["#6ab04c", "#2980b9", "#f39c12", "#d35400", "#8e44ad"]),
        item => item.Kota_Kabupaten
    );

    fetchDataAndRenderChart('./FetchData/fetch_top_umkm.php', "#topUmkmChart", {
        chart: {
            type: 'bar',
            height: 350
        },
        series: (data) => [{
            name: 'Top 10 UMKM',
            data: data.map(item => item.total)
        }],
        xaxis: {
            categories: (data) => data.map(item => item.Nama_Resto)
        },
        colors: ['#d35400'],
        dataLabels: {
            enabled: false
        }
    });

    fetchDataAndRenderChart('./FetchData/fetch_top_menu.php', "#topMenuChart", {
        chart: {
            type: 'bar',
            height: 350
        },
        series: (data) => [{
            name: 'Top 10 Menu',
            data: data.map(item => item.total)
        }],
        xaxis: {
            categories: (data) => data.map(item => item.Nama_Menu)
        },
        colors: ['#8e44ad'],
        dataLabels: {
            enabled: false
        }
    });

    fetchDataAndRenderChart('./FetchData/fetch_event_lokasi.php', "#topLokasiChart", {
        chart: {
            type: 'bar',
            height: 350
        },
        series: (data) => [{
            name: 'Top Lokasi Event',
            data: data.map(item => item.total)
        }],
        xaxis: {
            categories: (data) => data.map(item => item.Lokasi_Event)
        },
        colors: ['#8e44ad'],
        dataLabels: {
            enabled: false
        }
    });


    const darkmodeToggle = document.querySelector("#darkmode-toggle");
    darkmodeToggle.onclick = (e) => {
        e.preventDefault();
        document.body.classList.toggle("dark");
        darkmodeToggle.querySelector(".darkmode-switch").classList.toggle("active");
        localStorage.setItem("darkmode", document.body.classList.contains("dark"));
        setDarkChart(document.body.classList.contains("dark"));
    };

    if (localStorage.getItem("darkmode") === "true") {
        document.body.classList.add("dark");
        darkmodeToggle.querySelector(".darkmode-switch").classList.add("active");
        setDarkChart(true);
    }

    const currentPath = window.location.pathname.split('/').pop();
    const pageLinks = {
        "dashboard.php": "dashboard-link",
        "penjualan.php": "penjualan-link",
        "analytic.php": "analytic-link",
        "akun.php": "akun-link",
        "listUMKM.php": "listUMKM-link",
        "event.php": "event-link",
        "artikel.php": "artikel-link"
    };
    if (pageLinks[currentPath]) {
        document.getElementById(pageLinks[currentPath]).classList.add("active");
    }

    document.querySelector("#mobile-toggle").onclick = () => {
        document.querySelector(".sidebar").classList.toggle("active");
        document.querySelector(".overlay").classList.toggle("active");
    };

    document.querySelector("#sidebar-close").onclick = () => {
        document.querySelector(".sidebar").classList.toggle("active");
        document.querySelector(".overlay").classList.toggle("active");
    };
});

document.querySelectorAll(".sidebar-submenu").forEach((e) => {
    e.querySelector(".sidebar-menu-dropdown").onclick = (event) => {
      event.preventDefault();
      e.querySelector(".sidebar-menu-dropdown .dropdown-icon").classList.toggle("active");
  
      let dropdown_content = e.querySelector(".sidebar-menu-dropdown-content");
      let dropdown_content_lis = dropdown_content.querySelectorAll("li");
  
      let active_height = dropdown_content_lis[0].clientHeight * dropdown_content_lis.length;
  
      dropdown_content.classList.toggle("active");
  
      dropdown_content.style.height = dropdown_content.classList.contains("active") ? active_height + "px" : "0";
    };
  });