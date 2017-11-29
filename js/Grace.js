var fs = require('fs');
const file = function () {
	fs.appendFileSync('Grace_kid.js', 'const file = ' + file.toString() + '\n', 'utf8')
}
const data = function () {
	fs.appendFileSync('Grace_kid.js', 'const data = ' + data.toString() + '\n')
}
const begin = function () {
	/*
		Bonjour je suis un commentaire mdr
	*/
	fs.open('Grace_kid.js', "w", function (err, fd) {
		if (!err) {
			fs.writeFileSync('Grace_kid.js', 'var fs = require(\'fs\');\n');
			file();
			data();
			fs.appendFileSync('Grace_kid.js', 'const begin = ' + begin.toString() + '\n');
			fs.appendFileSync('Grace_kid.js', 'begin()\n');
			fs.close(fd, function (err) {});
		}
	});

}
begin()
