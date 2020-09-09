<template>
    <section class="page-section mb-0 bg-grey1" id="myapps">

        <div class="container" style="">

            <h2 class="page-section-heading text-center text-uppercase text-grey text-head">My little old training apps</h2>

            <div v-for="item in projects" class="row">

                <div class="col-sm-12">

                    <div class="container project">
                        <div class="row">
                            <div class="card text-grey card-project">
                                <div class="row no-gutters">
                                    <div class="col-md-4">
                                        <a :href="item.link">
                                            <img :src="'storage/app/public/' + item.img_path" class="card-img" alt="" style="padding: 30px">
                                        </a>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="card-body apps">
                                            <h5 class="card-title h5-style">{{ item.name }}</h5>
                                            <p class="card-text">{{ item.skills }}</p>
                                            <p class="card-text">{{ item.description }}</p>
                                            <div class="text-left">
                                                <a class="btn btn-outline-secondary btn-git" :href="item.git_link" >GitHub Link</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
        name: "AppsComponent",
        props: [
            'projects'
        ],
    }
</script>

<style scoped>

    .btn-git {
        border: 0.125rem solid;
        border-radius: 0.5rem!important;
        font-size: 1rem;
    }
    .apps {
        padding: 30px;
    }

</style>
