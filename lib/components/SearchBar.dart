import 'package:flutter/material.dart';

class SearchBarAndFilter extends StatelessWidget {
  const SearchBarAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10, // Reduced vertical padding
        horizontal: 10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(95, 96, 96, 96),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5, // Reduced vertical padding
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Where do you want to go?",
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 15,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }
}
void _searchAddress(String query) {
  // Assuming you have a collection of addresses
  final List<String> smartParkCollectionAddress = [
    '123 Main St',
    '456 Elm St',
    '789 Maple Ave',
    // Add more addresses here
  ];

  // Filter the addresses based on the query
  final List<String> searchResults = smartParkCollectionAddress
      .where((address) => address.toLowerCase().contains(query.toLowerCase()))
      .toList();

  // Print the search results (you can update this to show results in the UI)
  print(searchResults);
}

@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  color: Color.fromARGB(95, 96, 96, 96),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        _searchAddress(value);
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Where do you want to go?",
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
      ],
    ),
  );
}