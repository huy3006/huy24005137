<?php
   
   
    $sql="SELECT * From home";
    $result=excute($sql);
    foreach($result as $row){
?>
<div class="introduce">
        <div style="margin-top:5px;" class="introduce-top">
            <img src="<?php echo $row['home_img']; ?>" alt="" class="introduce-top_img">
        </div>
        <div class="introduce-mid">
            <p class="introduce-mid_tittle">Cửa hàng HCC</p>
                <p class="content-detail">Vingroup Joint Stock Company (Vingroup JSC) <br>
Vingroup, formerly known as Technocom Corporation, was founded in 1993 in Ukraine. In the early 2000s, Vingroup started in Vietnam with two key brands: Vincom and Vinpearl. In January 2012, Vinpearl JSC merged with Vincom JSC to form Vingroup Joint Stock Company. 

Vingroup is one of the biggest private conglomerate in Asia with a market capitalization value of around US $16 billion. As a multi-sector corporation, Vingroup focuses on three main areas: 
- Technology 

- Industrials 

- Property- Services. 

Vingroup continues to pioneer and lead consumer trends in each of its businesses introducing Vietnamese consumers to a brand new, modern life-style with international-standard products and services. Vingroup has created a respected, well-recognized Vietnamese brand and is proud to be one of the nation’s leading private enterprises.</p>
            


        </div>
    <div class="introduce-bottom">
            <div class="introduce-bottom_leader">
                <img src="<?php echo $row['ceo_img']; ?>" alt="" class="leader-img">
                <p class="introduce-leader">CEO <br>    Vũ Tuấn Cảnh</p>
            </div>
            <div class="introduce-bottom_employee">
                <img src="<?php echo $row['founder_img']; ?>" alt="" class="employee-img">
                <p class="introduce-employee">FOUNDER <br> Nguyễn Quốc Huy</p>
            </div>
            <div class="introduce-bottom_staff">
                <img src="<?php echo $row['leader_img']; ?>" alt="" class="staff-img">
                <p class="introduce-staff">LEADER <br> Lê Văn Chiến</p>
            </div>
            

    </div>
</div>
<?php
    }
?>