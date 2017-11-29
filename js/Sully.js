var fs = require('fs')
var exec = require('child_process').exec
var x = 5;
function main() {
	console.log(__filename.split('/').slice(-1)[0])
		if (__filename.split('/').slice(-1)[0] != 'Sully.js') {
			x--;
		}
	fs.open('Sully_' + x + '.js', "w", function (err, fd) {
		if (!err) {
			fs.writeFileSync('Sully_' + x + '.js', 'var fs = require(\'fs\')\nvar exec = require(\'child_process\').exec\n', 'utf-8');
			fs.appendFileSync('Sully_' + x + '.js', 'var x = ' + x + ';\n');
			fs.appendFileSync('Sully_' + x + '.js', main.toString() + '\nmain()\n');
			if (x > 0) {
				exec('node Sully_' + x + '.js', function(error, stdout, stderr) {
					process.exit(0);
				});
			}
			fs.close(fd, function (err) {});
		}
	});
}
main()
