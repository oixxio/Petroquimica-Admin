// grab all our packages
var gulp = require('gulp'),
    browserSync = require('browser-sync').create();

// create a task to serve the app
gulp.task('serve', function() {
    // start the proxy for apache
    browserSync.init({
        proxy: "127.0.0.1/Petroquimica-Admin/"
    });
    gulp.watch("*.html").on('change',browserSync.reload);
    gulp.watch("**/*.html").on('change',browserSync.reload);
    gulp.watch("**/*.js").on('change',browserSync.reload);
    gulp.watch("**/*.css").on('change',browserSync.reload);
    gulp.watch("**/*.php").on('change',browserSync.reload);
});