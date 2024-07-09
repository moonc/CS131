BEGIN{FS=","}
{
	if($17 >=10)
		tips[$14]++

}
END{
	for(v in tips){
		print v,tips[v]
	}
	
}
