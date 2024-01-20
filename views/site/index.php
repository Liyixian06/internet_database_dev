<?php
use yii\bootstrap5\Html;
/** @var yii\web\View $this */

use yii\data\Pagination;
use yii\web\Response;
use yii\web\Controller;
use yii\widgets\LinkPager;
use yii\helpers\Url;

$url = Yii::getAlias("@web") . '';

$this->title = 'Nuclear Pollution';

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

    <!-- start page-wrapper -->
    <div class="page-wrapper">
        <header id="header">
            <div class="tb-topbar">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-12 col-md-12 col-12">
                            <div class="tb-topbar-info">
                                <ul>
                                    <li><a href="tel:+8619978387190"><i class="fi flaticon-receiver"></i> (+86)19978387190</a></li>
                                    <li><a href="mailto: 2110577@nankai.edu.cn"><i class="fi flaticon-mail"></i> 2110577@nankai.edu.cn</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- end of header -->
        <!-- start of tb-hero-section -->
        <section class="tb-hero-wrap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-12">
                        <div class="tb-hero-slider">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="slide-inner slide-bg-image" data-background="<?= $url ?>/image/1.jpg">
                                            <div class="gradient-overlay"></div>
                                            <div class="container">
                                                <div class="slide-content">
                                                    <div data-swiper-parallax="300" class="blog-text-info">
                                                    </div>
                                                    <div data-swiper-parallax="400" class="slide-title">
                                                        <h2 style="font-size: 18px; font-weight: normal;"><a href="blog-single.html">根据国际原子能机构（IAEA）发布的《国际原子能机构安全术语——核安全和辐射防护系列》，
                                                            核污染是指在物体表面或者固体、液体和气体内（包括人体内）存在不期望存在的放射性物质，或导致该结果产生的过程。
                                                        </a></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- end slide-inner -->
                                    </div> <!-- end swiper-slide -->

                                    <div class="swiper-slide">
                                        <div class="slide-inner slide-bg-image" data-background="<?= $url ?>/image/2.png">
                                            <div class="gradient-overlay"></div>
                                            <div class="container">
                                                <div class="slide-content">
                                                    <div data-swiper-parallax="300" class="blog-text-info">
                                                    </div>
                                                    <div data-swiper-parallax="400" class="slide-title">
                                                    <h2 style="font-size: 18px; font-weight: normal;"><a href="blog-single.html">
                                                            狭义上的核污染主要指具有放射性的核物质对于环境的直接破坏，包括核物质泄露导致的放射性污染、放射性沉降物造成的污染等。
                                                        </a></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- end slide-inner -->
                                    </div> <!-- end swiper-slide -->

                                    <div class="swiper-slide">
                                        <div class="slide-inner slide-bg-image" data-background="<?= $url ?>/image/3.jpg">
                                            <div class="gradient-overlay"></div>
                                            <div class="container">
                                                <div class="slide-content">
                                                    <div data-swiper-parallax="300" class="blog-text-info">
                                                    </div>
                                                    <div data-swiper-parallax="400" class="slide-title">
                                                    <h2 style="font-size: 18px; font-weight: normal;"><a href="blog-single.html">
                                                            由于核污染通常伴随着漫长的清理过程，因此广义上的核污染还包含核物质泄露所引发的次生污染，例如核废物存储或处置问题导致的地下水污染等。
                                                        </a></h2>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> <!-- end slide-inner -->
                                    </div> <!-- end swiper-slide -->
                                </div>
                                <!-- end swiper-wrapper -->

                                <!-- swipper controls -->
                                <div class="swiper-pagination"></div>
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="tb-hero-right">
                            <div class="tb-hero-blog-item">
                                <div class="tb-hero-blog-text">
                                    <span>NEWS</span>
                                    <h4><a href="<?=Url::toRoute(['news']);?>">Learn some news?</a></h4>
                                    <br/>
                                    <p><?=Html::a('News &raquo;',['news'], ['class' => "btn btn-outline-secondary"]) ?></p>
                                </div>
                                <div class="tb-hero-blog-img">
                                    <img src="<?= $url ?>/static/picture/img-14.jpg" alt="">
                                </div>
                            </div>
                            <div class="tb-hero-blog-item">
                                <div class="tb-hero-blog-text">
                                    <span>CHARTS</span>
                                    <h4><a href="<?=Url::toRoute(['chars']);?>">View some data?</a></h4>
                                    <br/>
                                    <p><?=Html::a('Charts &raquo;',['charts'], ['class' => "btn btn-outline-secondary"]) ?></p>
                                </div>
                                <div class="tb-hero-blog-img">
                                    <img src="<?= $url ?>/static/picture/img-25.jpg" alt="">
                                </div>
                            </div>
                            <div class="tb-hero-blog-item">
                                <div class="tb-hero-blog-text">
                                    <span>REVIEWS</span>
                                    <h4><a href="blog-single.html">Look at what people say? </a></h4>
                                    <br/>
                                    <p><?=Html::a('Review &raquo;',['review'], ['class' => "btn btn-outline-secondary"]) ?></p>
                                </div>
                                <div class="tb-hero-blog-img">
                                    <img src="<?= $url ?>/static/picture/img-35.jpg" alt="">
                                </div>
                            </div>
                            <div class="tb-hero-blog-item">
                                <div class="tb-hero-blog-text">
                                    <span>ABOUT</span>
                                    <h4><a href="<?=Url::toRoute(['about']);?>">Know more about us?</a></h4>
                                    <br/>
                                    <p><?=Html::a('Review &raquo;',['about'], ['class' => "btn btn-outline-secondary"]) ?></p>
                                </div>
                                <div class="tb-hero-blog-img">
                                    <img src="<?= $url ?>/static/picture/img-42.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- end of tb-hero-section slider -->
    </div>
