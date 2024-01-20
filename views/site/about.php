<?php

/** @var yii\web\View $this */

use yii\helpers\Html;
$url = Yii::getAlias("@web") . '/img/';

$this->title = 'About Us';
/*$this->params['breadcrumbs'][] = $this->title;*/

$this->registerJsFile('@web/static/js/jquery.min.js');
$this->registerJsFile('@web/static/js/bootstrap.bundle.min.js');
$this->registerJsFile('@web/static/js/modernizr.custom.js');
$this->registerJsFile('@web/static/js/jquery.dlmenu.js');
$this->registerJsFile('@web/static/js/jquery-plugin-collection.js');
$this->registerJsFile('@web/static/js/script.js');

?>

<?= Html::cssFile('@web/static/css/themify-icons.css') ?>
<?= Html::cssFile('@web/static/css/flaticon.css') ?>
<?= Html::cssFile('@web/static/css/bootstrap.min.css') ?>
<?= Html::cssFile('@web/static/css/animate.css') ?>
<?= Html::cssFile('@web/static/css/owl.carousel.css') ?>
<?= Html::cssFile('@web/static/css/owl.theme.css') ?>
<?= Html::cssFile('@web/static/css/slick.css') ?>
<?= Html::cssFile('@web/static/css/slick-theme.css') ?>
<?= Html::cssFile('@web/static/css/swiper.min.css') ?>
<?= Html::cssFile('@web/static/css/owl.transitions.css') ?>
<?= Html::cssFile('@web/static/css/jquery.fancybox.css') ?>
<?= Html::cssFile('@web/static/css/odometer-theme-default.css') ?>
<?= Html::cssFile('@web/static/css/style.css') ?>
 

</div>

    <!-- start page-wrapper -->
    <div class="page-wrapper">
        <!-- start preloader -->
        <div class="preloader">
            <div class="vertical-centered-box">
                <div class="content">
                    <div class="loader-circle"></div>
                    <div class="loader-line-mask">
                        <div class="loader-line"></div>
                    </div>
                    <img src="static/picture/preloader.png" alt="">
                </div>
            </div>
        </div>
        <!-- end preloader -->

        <!-- start tb-page-title -->
        <section class="tb-page-title">
            <div class="container">
                <div class="row">
                    <div class="col col-xs-12">
                        <div class="tb-breadcumb-wrap">
                            <h2>Who are we?</h2>
                            <ol class="tb-breadcumb-wrap">
                                <li style="font-size: 20px; font-weight: normal;">
                                我们是四个来自南开大学的学生，<br/>
                                开发这个网站是为了让人们进一步了解有关核污染的信息。<br/>
                                我们收集各大媒体上有关核污染的信息整理聚集于此，分为 News、Charts、Review 三个板块。<br/>
                                在这里，您可以阅读新闻了解重要事件、了解污染现状、参与社区讨论。<br/>
                                如果您有任何建议，欢迎联系我们！
                                </li>
                            </ol>
                        </div>
                    </div>
                </div> <!-- end row -->
            </div> <!-- end container -->
        </section>
        <!-- end page-title -->
        <!-- start tb-contact-pg-section -->
        <section class="tb-contact-pg-section section-padding">
            <div class="container">
                <div class="row">
                    <div class="col col-lg-10 offset-lg-1">
                        <div class="office-info">
                            <div class="row">
                                <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                                    <div class="office-info-item">
                                        <div class="office-info-icon">
                                            <div class="icon">
                                                <i class="fi flaticon-pin"></i>
                                            </div>
                                        </div>
                                        <div class="office-info-text">
                                            <h2>Address</h2>
                                            <p>Nankai University</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                                    <div class="office-info-item">
                                        <div class="office-info-icon">
                                            <div class="icon">
                                                <i class="fi flaticon-mail"></i>
                                            </div>
                                        </div>
                                        <div class="office-info-text">
                                            <h2>Email Us</h2>
                                            <p>2110577@mail.nankai.edu.cn</p>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="col col-xl-4 col-lg-6 col-md-6 col-12">
                                    <div class="office-info-item">
                                        <div class="office-info-icon">
                                            <div class="icon">
                                                <i class="fi flaticon-telephone-1"></i>
                                            </div>
                                        </div>
                                        <div class="office-info-text">
                                            <h2>Call Now</h2>
                                            <p>(+86)19978387190</p>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div> <!-- end container -->
        </section>
        <!-- end tb-contact-pg-section -->
       

    </div>
    <!-- end of page-wrapper -->