/*
	bonjour je suis un commentaire en dehors de la fonction main
*/

function useless_func() {
	console.log(useless_func.toString())
}

function main() {
	/*
		bonjour je suis un commentaire
	*/
	console.log('/*\n\tbonjour je suis un commentaire en dehors de la fonction main\n*/\n')
	useless_func()
	console.log('');
	console.log(main.toString() + '\n\nmain()')
}

main()
