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

    const lineChartOptions = {
        chart: {
            type: 'line',
            height: 350
        },
        series: [],
        xaxis: {
            categories: []
        },
        stroke: {
            curve: 'smooth',
            width: [4]
        },
        colors: ['#2980b9'],
        dataLabels: {
            enabled: false
        },
        markers: {
            size: 5,
            colors: ['#2980b9'],
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
    };

    fetchDataAndRenderChart('./FetchData/fetch_income.php', "#incomeChart", {...lineChartOptions, name: 'Income'});

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
