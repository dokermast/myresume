<template>

    <section class="page-section bg-blue1 text-white mb-0" id="experience">
        <div class="container-fluid pd-n">
            <h2 class="page-section-heading text-center text-uppercase text-white text-head">My Experience</h2>

            <div v-for="(item, index) in jobs"   class="container-fluid job">

                <div class="row job-row">

                    <div :class=" [ (index+1)%2 == 0 ? dateFirst : dateSecond ]">
                        <h3 class="text-head date-range">{{ item.dateRange}}</h3>
                    </div>

                    <div :class="[ (index+1)%2 == 0 ? dataFirst : dataSecond]" >
                        <div class="card">
                            <div class="card-body card-data">
                                <h2 v-show="status">Show Status {{ status }}</h2>
                                <h5 class="card-title">{{ item.companyName }}</h5>
                                <h6 class="card-title">{{ item.position }}</h6>
                                <h6 class="card-title">{{ item.typeJob }}</h6>
                                <h6 class="card-title">{{ item.langs }}</h6>
                                <h6 class="card-title">{{ item.library }}</h6>
                                <h6 class="card-title">{{ item.stack }}</h6>
                                <div class="company-btn">
                                    <a v-if="item.companyLink" :class="[ (index+1)%2 == 0 ? companyLinkSecond : companyLinkFirst]" :href="item.companyLink">Company Link</a>
                                    <a v-else :class="[ (index+1)%2 == 0 ? companyLinkSecond : companyLinkFirst] + ' disabled'" :href="item.companyLink">Company Link</a>
                                </div>
                                <div class="text-center"><h2></h2></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="cv-btn" class="text-center mt-4">
                <a v-if="letter.path" :href="sub + '/storage/app/public/' + letter.path" class="btn btn-xl btn-outline-light btn-download">
                    <i class="fas fa-download mr-2"></i>Download MY CV
                </a>
                <a v-else class="btn btn-xl btn-outline-light btn-download" :href= "sub + '/public/files/CV_Chebotnikov.rtf'">
                    <i class="fas fa-download mr-2"></i>Download MY CV
                </a>
            </div>
        </div>

    </section>

</template>

<script>
    export default {
        name: "ExperienceComponent",
        props: {
            jobs: Array,
            letter: Object,
            sub: String
        },
        data: function () {
            return {
                status: false,
                isActive: true,
                dateFirst: 'border-bottom col-sm-5 text-center d-flex justify-content-center align-items-center bg-grey1-mob blue-main-mob',
                dateSecond: 'border-bottom col-sm-5 text-center d-flex justify-content-center align-items-center bg-grey1-mob blue-main-mob  bg-grey1-job blue-main-job',
                dataFirst: 'border-top col-sm-7 bg-grey1-job blue-main-job',
                dataSecond: 'border-top col-sm-7',
                companyLinkFirst: 'btn btn-outline-secondary btn-white btn-white-mob company-link',
                companyLinkSecond: 'btn btn-outline-secondary btn-blue btn-white-mob company-link',
            }
        },
        methods: {

        }
    }
</script>

<style scoped>

    .red {
        color: red;
    }
    .bgd {
        background-color: white;
    }

    .pd-n {
        padding: 0;
    }
    .date-range {
        font-size: 1.75rem;
    }
    .company-link {
        border: 0.125rem solid transparent;
        border-radius: 0.5rem;
        font-size: 1rem;
    }

    .btn-xl {
        padding: 1rem 1.75rem;
        font-size: 1.25rem;
        border: 0.125rem solid white;
        border-radius: 0.5rem;
    }
    .company-btn {
        padding-top: 20px;
    }

</style>
