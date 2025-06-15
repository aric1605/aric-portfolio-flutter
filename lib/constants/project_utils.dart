class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? iosLink;
  final String? androidLink;
  final String? webLink;
  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectUtils> Projects = [
  ProjectUtils(
    image: "assets/project/1.jpg",
    title: "Know Your Leader",
    subtitle:
        "Know Your Leader is a modern, user-friendly Android application that facilitates transparent and secure voting for elections, contests, or events",
    androidLink:
        "https://drive.google.com/file/d/1wCqTRLMWPS5QOrieHDhP3XjWsF7dPjnr/view",
    webLink: "https://github.com/aric1605/Know_Your_Leader",
  ),
  ProjectUtils(
    image: "assets/project/2.png",
    title: "Alarm Quiz App",
    subtitle:
        "A smart alarm app that *literally forces you to wake up your brain* before your body",
    androidLink:
        "https://drive.google.com/file/d/1r6N0QPFWNqQOOoXvz33Zx0h9evfF6RgR/view",
    webLink: "https://github.com/aric1605/Alarm_Application",
  ),
  ProjectUtils(
    image: "assets/project/3.png",
    title: "ParkiScan",
    subtitle:
        "A sleek, smart and research-backed project that uses data and AI to support early detection of Parkinson’s Disease",
    webLink:
        "https://github.com/aric1605/ParkiScan-A-Machine-Learning-Approach-to-Parkinson-s-Disease-Detection",
    androidLink:
        "https://medium.com/@23ucs688/parkiscan-a-machine-learning-approach-to-parkinsons-disease-detection-d651b5563f78",
    iosLink:
        "https://medium.com/@23ucs688/parkiscan-a-machine-learning-approach-to-parkinsons-disease-detection-d651b5563f78",
  ),
  ProjectUtils(
    image: "assets/project/test.jpg",
    title: "Aric Portfolio",
    subtitle: "",
    webLink: "https://aric-portfolio.web.app/",
    androidLink: "https://aric-portfolio.web.app/",
    iosLink: "https://aric-portfolio.web.app/",
  ),
];
