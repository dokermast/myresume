<template>

    <section class="page-section mb-0 bg-grey2" id="aboutme">
        <div id="about" class="container-fluid">

            <h2 class="page-section-heading text-center text-uppercase text-grey text-head">About me</h2>

            <div class="container-fluid job">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body text-grey text-justify">
                                <p v-html="about.info"></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <br>
        </div>
        <div class="container-fluid bg-blue1" style="padding: 50px 0; border-top: white solid 2px">
            <h2 class="page-section-heading text-center text-uppercase text-white text-head">My IT education</h2>
            <div class="container-fluid job">

                <div class="row">
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body text-white text-center">
                                <h5 class="card-title h5-style">"STEP" IT School</h5>
                                <h6 class="card-title h6-style">WEB development</h6>
                                <h6 class="card-title h6-style">PHP, JS (1 year)</h6>
                                <p class="card-text">HTML / CSS / Bootstrap / JS / JQuery / MySQL / PHP / Laravel / React / AWS</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body text-white text-center">
                                <h5 class="card-title h5-style">SELF EDUCATION</h5>
                                <h6 class="card-title h6-style">WEB development/QA Automation</h6>
                                <h6 class="card-title h6-style">PHP, JS, JAVA/WEB Driver</h6>
                                <p class="card-text">Course “Fundamentals of automatization testing Web-applications” Training Center QATestLab2017, 2 months</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </section>

</template>

<script>
    export default {
        props: [
            'about'
        ],
        name: "AboutComponent",
    }
</script>

