subproceso multi<- res1(d,h,s)
	multi<-s*h*(d*2+1)
finsubproceso
subproceso multo<- res2(d,h,s,fe)
	multo<-s*h*(d*2+1)*(fe*2)
finsubproceso
subproceso mul<-res3(d,h,s,sa)
	mul<-s*h*(d*2+1)*(sa*2)
finsubproceso
subproceso mol<-res4(d,h,s,sa,fe)
	mol<-s*h*(d*2+1)*(sa*2)*(fe*2)
finsubproceso
subproceso molp<-res5(d,h,s,he)
	molp<-s*h*(d*2+1)*(he*2)
finsubproceso
subproceso molm<-res6(d,h,s,fe,he)
	molm<-s*h*(d*2+1)*(fe*2)*(he*2)
finsubproceso
subproceso mom<-res7(d,h,s,sa,he)
	mom<-s*h*(d*2+1)*(sa*2)*(he*2)
finsubproceso
subproceso mok<-res8(d,h,s,sa,he,fe)
	mok<-s*h*(d*2+1)*(sa*2)*(he*2)*(fe*2)
finsubproceso
Algoritmo calculadoradepagos
	h<-0
	d<-0
	s<-0
	he<-0
	fe<-0
	df<-caracter
	sa<-0
	p<-caracter
	m<-caracter
	a3<-caracter
	Repetir
		p <- '_'
	Escribir "Cuantas horas trabajas:"
	leer h
	Si 8>=h Entonces
		Escribir "Cuantos dias trabajaste (lunes a Viernes)"
		Leer d
		Si 5>=d Entonces
			Escribir "Salario por hora"
			leer s
			Si s>=172 Entonces
				Escribir "Trabajaste horas extra"
				leer m
				Si m="si" Entonces
					Escribir "Cuantas horas trabajaste"
					Leer he
					Si 9>=he Entonces
						Escribir "trabajaste en tu dia de descanso"
						leer a3
						Si a3="si" Entonces
							Escribir "Cuantas horas trabajaste en tu dia de descanso"
							leer sa
							Si 8>=sa Entonces
								Escribir "trabajaste en dias festivos"
								leer df
								Si df="si" Entonces
									fe=2
									Escribir "te pagaran ", res8(d,h,s,he,sa,fe)
								SiNo
									fe=0
									Escribir "te pagaran ", res7(d,h,s,he,sa)
								Fin Si
							Fin Si
						SiNo
							Escribir "trabajaste en dias festivos"
							leer df
							Si df="si" Entonces
								fe=2
								Escribir "te pagaran ", res6(d,h,s,fe,he)
							SiNo
								fe=0
								Escribir "te pagaran ", res5(d,h,s,he)
							Fin Si
					Fin Si
				Fin Si
			SiNo
				Escribir "trabajaste en tu dia de descanso"
					leer a3
					Si a3="si" Entonces
						Escribir "Cuantas horas trabajaste en tu dia de descanso"
						leer sa
						Si 8>=sa Entonces
							Escribir "trabajaste en dias festivos"
							leer df
							Si df="si" Entonces
								fe=2
								Escribir "te pagaran ", res4(d,h,s,sa,fe)
							SiNo
								fe=0
								Escribir "te pagaran ", res3(d,h,s,sa)
							Fin Si
						Fin Si
					SiNo
						Escribir "trabajaste en dias festivos"
						leer df
						Si df="si" Entonces
							fe=2
							Escribir "te pagaran ",res2(d,h,s,fe)
						SiNo
							fe=0
							Escribir "te pagaran ",res1(d,h,s)
						Fin Si
							
						FinSi
					Fin Si
		Fin Si
	fin si
fin si
	Mientras p<>'n' Y p<>'no' Y p<>'No' Y p<>'N' Y p<>'s' Y p<>'si' Y p<>'Si' Y p<>'S' Hacer
		Si p<>'_' Entonces
			Escribir 'Para volver a intentar usa s/si para apagar usa n/no'
		SiNo
			Escribir 'Quieres volver a intentarlo s/si para apagar usa n/no'
		FinSi
		Leer p
	FinMientras
Hasta Que p='no' O p='n' O p='NO' O p='N'
Escribir 'Adios'
FinAlgoritmo
