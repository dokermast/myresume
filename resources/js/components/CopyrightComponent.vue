<template>
    <div class="copyright py-4 text-center text-grey bg-grey1">
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-4 mb-5 mb-lg-0 bottom-block">
                    <h5 class="text-uppercase mb-4 h5-style">Location</h5>
                    <p class="lead mb-0">
                        {{ contact.location }}
                    </p>
                </div>

                <div class="col-lg-4 mb-5 mb-lg-0 bottom-block text-center">
                    <h5 class="text-uppercase mb-4 h5-style">I am in ...</h5>

                    <div class="container text-center">
                        <a class="btn btn-social mx-1 grey1" :href="contact.linkin"><i class="fab fa-fw fa-linkedin-in"  style='font-size:30px;'></i></a>
                        <a class="btn btn-social mx-1 grey1" :href="contact.github"><i class="fab fa-fw fa-github"  style='font-size:30px;'></i></a>
                    </div>

                </div>

                <div class="col-lg-4 mb-5 mb-lg-0 bottom-block">
                    <h5 class="text-uppercase mb-4 h5-style">Contacts</h5>
                    <p class="lead mb-0">
                        Skype: {{ contact.skype }}
                        <br />
                        Phone: {{ contact.phone }}
                        <br />
                        Email: {{ contact.email }}
                    </p>
                </div>

            </div>
        </div>
        <div class="container"><small><a class="text-grey" href="http://www.vitchedev.net/vitche-resume/">vitchedev.net</a></small></div>
    </div>
</template>

<script>
    export default {
        name: "CopyrightComponent",
        props: {
            contact: Object
        }
    }
</script>

<style scoped>

</style>
