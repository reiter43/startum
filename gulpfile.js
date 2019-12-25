
const gulp = require('gulp');

const del = require('del');

const browserSync = require('browser-sync').create();

const concat = require('gulp-concat');
const autoprefixer = require('gulp-autoprefixer');
const cleanCSS = require('gulp-clean-css');
const sourcemaps = require('gulp-sourcemaps');
const sass = require('gulp-sass');
const gcmq = require('gulp-group-css-media-queries');
const smartgrid = require('smart-grid');

const uglify = require('gulp-uglify');
const babel = require('gulp-babel');

const imagemin = require('gulp-imagemin');
const imgCompress = require('imagemin-jpeg-recompress');
const imageminPngquant = require('imagemin-pngquant');

const svgmin = require("gulp-svgmin");
const cheerio = require("gulp-cheerio");
const replace = require("gulp-replace");
const svgSprite = require("gulp-svg-sprite");




//Таск для обработки стилей
gulp.task('styles', () => {
	return gulp.src([
		'./src/libs/owlcarousel/*.css',
		// './src/libs/slick/*.css',
		'./src/libs/magneficPopap/*.css',
		'./src/scss/style.scss'
	])
		.pipe(sourcemaps.init())
		.pipe(sass())
		.pipe(concat('style.css'))
		.pipe(gcmq())
		.pipe(autoprefixer({
			grid: true,
			overrideBrowserslist: ['last 3 versions'],
			cascade: false
		}))
		.pipe(cleanCSS({
			level: 2
		}))
		.pipe(sourcemaps.write('./'))
		.pipe(gulp.dest('./build/css'))
		.pipe(browserSync.stream());
});


//Таск для обработки скриптов jQUery
gulp.task('scripts', () => {
	return gulp.src([
		'./src/libs/jQuery/*.js',
		'./src/libs/owlcarousel/*.js',
		// './src/libs/slick/*.js',
		// './src/libs/pageToScroll/*.js',
		'./src/libs/lazyLoad/*js',
		'./src/libs/magneficPopap/*.js',				
		'./src/js/scriptJquery/*.js'
	])
		.pipe(concat('all.js'))
		.pipe(uglify())
		.pipe(gulp.dest('./build/js'))
		.pipe(browserSync.stream());
});

//Таск для обработки скриптов кастомных
gulp.task('scriptsCustom', () => {
	return gulp.src([
		'./src/js/script/*.js',
		'./src/js/script/script.js'
	])
		.pipe(babel({
			presets: ['@babel/env']
		}))
		.pipe(concat('scripts.js'))
		// .pipe(uglify())
		.pipe(gulp.dest('./build/js'))
		.pipe(browserSync.stream());
});

//Таск для очистки папки build
gulp.task('del', () => {
	return del([
		'build/css/*',
		'build/js/*',
		'build/img/*'
	])
});

// Таск для сжатия изображений
gulp.task('img-compress', () => {
	return gulp.src('./src/img/images/**')
		.pipe(imagemin([
			imgCompress({
				loops: 4,
				min: 65,
				max: 75,
				quality: 'high'
			}),
			imagemin.gifsicle({ interlaced: true }),
			imagemin.jpegtran({ progressive: true }),
			imagemin.optipng({ optimizationLevel: 3 }),
			imageminPngquant(	{
				quality:[0.7, 0.9],
				speed: 1			
			})		
		]))
		.pipe(gulp.dest('./build/img/images'))
});

// Таск для создания SVG-спрайтов
gulp.task('svg', () => {
	return gulp.src('./src/img/svg/*.svg')
		.pipe(svgmin({
			js2svg: {
				pretty: true
			}
		}))
		.pipe(cheerio({
			run: function ($) {
				$('[fill]').removeAttr('fill');
				$('[stroke]').removeAttr('stroke');
				$('[style]').removeAttr('style');
			},
			parserOptions: { xmlMode: true }
		}))
		.pipe(replace('&gt;', '>'))
		.pipe(svgSprite({
			mode: {
				symbol: {
					sprite: "../sprite.svg"
				}
			}
		}))
		.pipe(gulp.dest('./build/img/svg'));
});


//Таск для генерации сетки
gulp.task('grid', (done) => {
	let settings = {
		filename: "smart-grid",
		outputStyle: "scss",
		columns: 12,
		offset: "30px",
		mobileFirst: false,
		container: {
			maxWidth: "1920px",
			fields: "181px"
		},
		breakPoints: {
			lllg: {
				width: "1700px",
				fields: "100px"
			},
			llg: {
				width: "1450px",
				fields: "50px"
			},
			lg: {
				width: "1200px",
				fields: "50px"
			},
			md: {
				width: "996px",
				fields: "50px"
			},
			sm: {
				width: "750px",
				fields: "30px"
			},
			xs: {
				width: "576px",
				fields: "15px"
			},
			xxs: {
				width: "375px",
				fields: "15px"
			},
			xxxs: {
				width: "320px"
			}
		}
	};

	smartgrid('./src/libs', settings);
	done();
});




//Таск для отслеживания изменений в файлах
gulp.task('watch', () => {
	browserSync.init({
		server: {
			baseDir: "build"
		}
	});
	// Слежка за добавлением изображений
	gulp.watch('./src/img/images/**', gulp.series('img-compress'))
	// Слежка за добавлением svg
	gulp.watch('./src/img/svg/*.svg', gulp.series('svg'))
	//Следить за файлами со стилями с нужным расширением
	gulp.watch('./src/scss/**/*.scss', gulp.series('styles'))
	//Следить за JS файлами
	gulp.watch('./src/js/**/*.js', gulp.series('scripts', gulp.parallel('scriptsCustom')))
	// gulp.watch('./src/js/script/*.js', gulp.series('scriptsCustom', ))
	//При изменении HTML запустить синхронизацию
	gulp.watch("./build/*.html").on('change', browserSync.reload);
});





//Таск по умолчанию. Запускает сборку
gulp.task('default', gulp.series('del', 'grid', gulp.parallel('styles', 'scripts', 'scriptsCustom', 'img-compress', 'svg'), 'watch'));


