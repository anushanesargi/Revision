require 'time_estimate'

describe "estimate of reading time for a text, assuming that one can read 200 words a minute" do
  
  it "returns 0 minutes and 9.9 seconds" do
    expect(time_estimate("Follow the design recipe to implement the following user stories in your project. User stories follow a specific format — don't worry about that too much now, you'll get the hang of it.")).to eq "0 minute(s) and 9.9 second(s)"
  end

  it "returns 1 minute(s) and 26.7 second(s)" do
    expect(time_estimate("Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.Follow the design recipe to implement the following user stories in your project. 
      User stories follow a specific format — don't worry about that too much now, you'll get the hang 
      of it.")).to eq "1 minute(s) and 26.7 second(s)"
  end

  it "returns 1 minutes(s) and 50.1 second(s)" do
    expect(time_estimate("Origin and exploration or rubber

      Many times we do not give any thought to rubber with consideration to its origin. 
      It is evident that rubber originates from a variety of plants. 
      Moreover, high-yield plants are found in native Latin America and the most outstanding ones are 
      Castolloa and Hevea. It is worth knowing that, in the pre-Columbian America, people used rubber 
      for different artifacts like shoes, balls and water proofing. This, however, had not been evident anywhere else until after Columbus industrial revolution. 
      Rubber was introduced in Europe in 1492 and used for the manufacture of erasers and balls. 
      Furthermore, there were controversies that it melted in the sun, it also had a bad smell and became brittle in cold temperatures.

      Nevertheless, it was used for industrial and domestic applications, with Charles Goodyear inventing vulcanization in 1839. 
      The products that were produced from rubber include generators, electrical motors and tires. 
      It is evident that there were contradictions involving rubber as related to its exploitation.
          
      As it was considered to be high-tech and crude. The trees were cut with machetes and latex dripped 
      in cups after which they were transferred to industries in North America and Europe industries. 
      Britain experienced a mushroom growth of manufacturing industry. 
      
      Hardships in rubber exploration

      Among the first products of rubber in Britain were firestone, Goodyear, BF Goodrich and general tire. 
      Additionally, Poverty and calamities like hunger and death resulted on the course of rubber exploitation. 
      At these early years plantations only flourished in Africa, Asia and Oceania. 
      As a result, Henry Wickham imported hevea seeds via Kew gardens in 1876.
      
      The Putumayo valley in Brazil had vast numbers of Castilloa trees; however, 
      there were few trappers something that made importation of Chinese and Japanese an option that 
      never happened. In 2007, anthropologists discovered the lost tribe in Peruvian rainforest this included the Huitotos.
      
      Liberian conquest of America after 1492 resulted in slavery, genocide and dispossession. 
      The Portuguese started Atlantic slave trade, whereas the entire Hispaniola population died 50 years after Columbus. 
      Walt Hardenburg crossed the Andes in the late 1970 after working on the Panama Canal. 
      Furthermore, he travelled to London to confront the PACO board about the horrors slaves were undergoing.
      ")).to eq "1 minutes(s) and 50.1 second(s)"
  end

end