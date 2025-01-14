// nie wiem, czy powinny być faktycznie final, zależy jak będziemy je wczytywać i edytować
class Event {
  final String id;                  // Unikalny identyfikator
  final String name;                // Nazwa wydarzenia
  final String location;            // Lokalizacja wydarzenia
  final DateTime startDate;         // Data rozpoczęcia wydarzenia
  final int maxParticipants;        // Maksymalna liczba uczestników  -1 => bez ograniczeń
  int registeredParticipants;       // Liczba zarejestrowanych użytkowników
  // Może lepiej będzie przypisać listę użytkowników
  // List<Users> registeredParticipants;
  final String imagePath;           // Zdjęcie wizualizujące wydarzenie

  Event({
    required this.id,
    required this.name,
    required this.location,
    required this.startDate,
    required this.maxParticipants,
    required this.registeredParticipants,
    required this.imagePath,
  });

  void updateParticipantsCount(int newCount) {
    registeredParticipants = newCount;
  }
}