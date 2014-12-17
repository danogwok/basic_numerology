class StaticPagesController < ApplicationController
  def home
  end

  def result
  	@yourName = params[:yourName].to_s
  	@otherName = params[:otherName].to_s

  	conbindNames =  "#{@yourName} #{@otherName}"
  

   val={"a"=>1,"j"=>1,"s"=>1,
        "b"=>2,"k"=>2,"t"=>2,
        "c"=>3,"l"=>3,"u"=>3,
        "d"=>4,"m"=>4,"v"=>4,
        "e"=>5,"n"=>5,"w"=>5,
        "f"=>6,"o"=>6,"x"=>6,
        "g"=>7,"p"=>7,"y"=>7,
        "h"=>8,"q"=>8,"z"=>8,
        "i"=>9,"r"=>9}


   num=[]
   i=0
   while i < conbindNames.length do
     num << val[conbindNames[i,1]]
     i+=1
   end

   no=[]
   no=num
   j=0

   final=0
   #final=20
   while j < no.length
     final +=num[j].to_i
      j+=1
    end
    output= final.to_i
    #if output.length !=1
    #  output2=output.split(//)
    #  mind(output2)
    #  else

    

    @results = if output < 30
  		puts 30
  		respond_to do |format|
      	format.html # new.html.erb
     end
    else
        puts output
        respond_to do |format|
      format.html # new.html.erb
     end
    end
    #end

    @result_values = @results

# @groups = ["baby", "little child", "child", "youth", "yeay", "awesome", "get a room", "adult"]

  @uncompatible = ["A successful relationship between you two is almost impossible.", "For your relation to survive, you both should understand each others differences and need to develop a tendency to accept these differences."]  

  @not_compatible = ["Yours will be a difficult relationship." ,"It is very hard for both of you to understand each other.", "Spend as much time with each other as possible.", "A relationship is possible only if you both really want it and if both of you are willing to make few sacrifices."," A relationship between you will be full of challenges.", "You two are compatible in some areas but incompatible in others.", "Make sure you both respect each others needs and expectations." "Yours is a relation that is not considered compatible.", "This is because you two have nothing in common and you will find it hard to accept the ways of one another.", "Respect each other and try to learn new things from each other."]
  
  @almost_compatible = ["The chance of a relationship working out between the two of you is not very big, but a relationship is very well possible, if the two of you really want it to, and are prepared to make some sacrifices for it.", "You will have to spend a lot of quality time together.", "You must be aware of the fact that this relationship might not work out at all, no matter how much time you invest in it."," A relationship between you will be full of challenges."," You two are compatible in some areas but incompatible in others." ,"Make sure you both respect each others needs and expectations."]
  
  @neutral = ["A relationship between you two has a reasonable chance of working out, but on the other hand, it might not." ,"Your relationship may suffer good and bad times.", "If things might not be working out as you would like them to, do not hesitate to talk about it with the person involved."," Spend time together, talk with each other."," Yours will be a 50 - 50 relationship.", "It is difficult for you both to get along too well.", "Spend lots of time together and also address each others needs and concerns in the best possible manner."]
  
  @compatible = ["There is reasonable chance of working out, but on the other hand, it might not.", "Your relationship may suffer good and bad times.", "If things might not be working out as you would like them to, do not hesitate to talk about it with the person involved.", "Spend time together, talk with each other.","Yours is a very much compatible relationship.", "All you need to do is never try to dominate each other and don't be possessive.","You two make great partners and yours is a combination with a potential to survive for years.", "But your relationship needs spending time together, talking with each other.","Your relationship will run smoothly until one partner tries to dominate the other.", "Therefore the key to maintain a balanced relationship is not to try to dominate each other", "Yours is not a difficult relationship to survive.", "For a smooth relation there should be mutual understanding and both of you should not get into each others way.", "Yours is a compatible relation and you will find it easy to get along provided you do not compete with each other.", "Also compromise is very essential for this relationship to survive", "Your relation seems to be a natural fit.", "Yours will be a relationship will last forever.", "Avoid competition between yourself."]

  @highly_compatible = ["You two can create a good relationship as both of you are very family oriented.", "You both are very compatible and the likelihood of a clash is very narrow.", "Considerations of each others feelings is a must.", "Yours is a very passionate and strong relation.", "Be devoted to each other.", "Discuss issues openly and frankly" ]

  @very_compatible = ["Your relation seems to be a natural fit.", "Yours will be a relationship will last forever.", "Avoid competition between yourself.", "Yours is an excellent combination that can last a lifetime." ,"Pay attention and listen to each other carefully.", "Never let a competitive mentality to develop between you two."]

  @meant_to_be = ["You are very much compatible that there is little negative to say about this combination.", "Talk to each other openly and frankly to settle any issues, no matter how small and unimportant it is.", "A highly compatible relation!!! Both of you need to keep a close eye on the budget." ,"You will have to spend a lot of quality time together."]

  @message = case final
  when 0 .. 30
    puts @uncompatible.shuffle.sample
  when 31 .. 40
    puts @not_compatible.sample
  when 41 .. 50
    puts @almost_compatible.sample
  when 51 .. 60
    puts @neutral.sample
  when 61 .. 70
    puts @compatible.sample
  when 71 .. 80
    puts @highly_compatible.sample
  when 81 .. 90
    puts @very_compatible.sample
  else
    puts @meant_to_be.sample
  end   


 	#end
  end

  def help
  end

end
