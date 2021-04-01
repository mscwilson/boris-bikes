Boris Bikes Challenge
--

The main cycle hire scheme in London, Santander Cycles, is commonly known as "Boris Bikes", after Boris Johnson who was mayor when the scheme opened (it wasn't actually his idea). As part of the [Makers Academy](https://makers.tech) coding bootcamp, we were challenged to create a command line bike hire system as a way to learn TDD and practise pair programming.

### Goal

The code is centred around Bikes and DockingStations. The Bike objects are stored in DockingStation objects. Users can take bikes out if one is available, dock bikes, report broken bikes (which can't then be released), and the docking stations have a set capacity.

The majority of this repo was written using alternating pair programming. The contributors were: [PetarSimonovic](https://github.com/PetarSimonovic) and [Reeshul](https://github.com/Reeshul), [Reeshul](https://github.com/Reeshul) and [HamishArro](https://github.com/HamishArro), and [HamishArro](https://github.com/HamishArro) and I.

### Installation and Usage

To try out the project:
* Make sure Ruby and rspec are installed
* Clone this repo
* Navigate into the cloned folder
* Run 'irb -r ./lib/dockingstation'
* Play with the code in the IRB REPL
* To run the tests, exit from irb
* Run 'rspec'
