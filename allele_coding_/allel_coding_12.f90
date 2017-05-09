!**************************************
! This is a program  to change SNPs allele codes 
 
! From 2010 1
!      2010 2

! To   2020 1 2
! required parameters are number of aniamls, 
! total number of SNPS Locus, Number of alleles per Locus
! if there are two allels per SNPs locus  the number 
! of locus is half the total number of alleles

! Kahsay Nirea March 26,2013, 10:06 AM  
!**************************************


program change_allel_code
integer,parameter::nall=2 
integer :: nanim,nloc
integer,allocatable::allel_in(:,:),allel_out(:,:),allel_out2(:,:)
character(len=50)::input_filename,output_filename1,output_filename2,str1,str2

  call getarg(1,input_filename)
  call getarg(3,str1)
  call getarg(4,str2)

  
  
  
 open(1,file=input_filename,status='old')
 open(2,file='output_filename1',status='unknown')
 open(3,file='output_filename2',status='unknown')
 
 write(str,'(i8)')nloc
 write(str,'(i8)')nanim
 
 allocate(allel_in(2*nanim,nloc))
 allocate(allel_out(nanim,2*nloc))
 allocate(allel_out2(nanim,2*nloc))
     
     do i=1,nanim 

        read(1,*) allel_in(1,1:nloc)
        read(1,*) allel_in(2,1:nloc)

         allel_out(:,1)=allel_in(1,1:nloc)
         allel_out(:,2)=allel_in(2,1:nloc)

         allel_out2(:,1)=allel_in(1,1:nloc)+1
         allel_out2(:,2)=allel_in(2,1:nloc)+1
                  

         write(2,'(i10,100000000i2)')((allel_out(j,k),k=1,nall),j=1,nloc)
         write(3,'(i10,100000000i2)')((allel_out2(j,k),k=1,nall),j=1,nloc)
         
    end do 

end program change_allel_code
       
       
  
 

 
