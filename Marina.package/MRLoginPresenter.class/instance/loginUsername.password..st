actions
loginUsername: username password: password
	<action>
	| user |
	
	user := MRUser userNamed: username.
	user ifNil: [ ^ self loginError ].
	(user validatePassword: password)
		ifTrue: [ self session user: user ]
		ifFalse: [ self loginError ]