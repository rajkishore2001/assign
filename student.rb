class Stringeg
    def default
        @emailid=Array.new
        
    end
    def input
        puts "enter email id"
        @emailid<< gets.chomp
    end
    def operations
        begin
            puts"1. Add mail id 2. display all 3. display only edu mail ids 4. search 5. delete mail id
by value 6. display unique domains of all mail ids 7. count mail ids in given domain
 8. exit"
            puts"enter yor choice"
            var=gets.to_i
          case var
            when 1 then input
            when 2 then puts @emailid
            when 3
                for i in @emailid
                    if i.include? "edu"
                        puts i
                    end
                end
            when 4
                puts "enter value to search"
                element=gets.chomp
                k=false
                l=0
                  for i in @emailid
                    if i==element
                        puts l
                        k=true
                        break
                    end
                    l=l+1
                end
                if k==false
                    puts "not found"
                end
            when 5 
                puts "enter element to delete"
                @emailid.delete(gets.chomp)
                puts "\n",@emailid
            when 6
                temp=Array.new
                for i in @emailid
                    index1=i.index("@")
                    index2=index1+i[index1,i.length].index(".")
                     if(!temp.include? i[index1+1,index2-index1-1])
                         temp.push(i[index1+1,index2-index1-1])
                     end
                end
                puts temp
            when 7
                 domainname=gets.chomp
                 count=0
                for i in @emailid
                    index1=i.index("@")
                    index2=index1+i[index1,i.length].index(".")
                     if(i[index1+1,index2-index1-1]==domainname)
                         count=count+1
                     end
                end
                puts count
           when 8 then puts "thank you"
           else puts "wrong input"
          end
        end while var!=8
    end      
end  
ob=Stringeg.new
ob.default
ob.operations
