<?php
class privilage{
    private $privilage;
    private $con;

    public function __construct($con, $privilage){
		$this->con = $con;
		$this->privilage=$privilage;
		$privilage_details_query = mysqli_query($con, "SELECT * FROM users WHERE privilage='$privilage'");
		$this->privilage = mysqli_fetch_array($privilage_details_query);
	}

    public function getPrivilage($Array) {
		return $this->privilage['privilage'];
	}


}
?>