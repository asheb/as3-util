package asheb.func.date {


	public function now():String {
		const d:Date = new Date
		return d.fullYear + "-" + d2(d.month+1) + "-" + d2(d.date) + " " +
		       sp(d.hours) + ":" + d2(d.minutes) + ":" + d2(d.seconds)
	}
}
