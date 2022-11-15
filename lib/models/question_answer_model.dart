class QAModel {
  final String? qText;
  final String? aText;

  QAModel({
    required this.qText,
    required this.aText,
  });
}

List<QAModel> qAList = [
  QAModel(
    qText: 'What is CURREENTVPN?',
    aText:
        'CURRENTVPN is a proxy VPN app for achieving network security, gaining privacy protection, '
        'and unblocking blocked sites. CURRENTVPN is smother, faster, safer, more stable, '
        'and easier to use than any othe vpn app.',
  ),
  QAModel(
    qText: '30 days without payment & Premium ',
    aText: 'We offer 30 days without payment and premium VPN service!Our '
        'CURRENTVPN is easy to use. So is our guarantee. If you’re not satisfied, '
        'we’ll refund your payment. No hassle, no risk.',
  ),
  QAModel(
    qText: 'No Annoying Ads',
    aText:
        'No annoying ads popping up while you’re watching videos or surfing the internet.',
  ),
  QAModel(
    qText: 'Access to all & Unblock any',
    aText:
        'Bypass internet censorship and firewalls to gain access to all blocked websites. '
        'Content sites, TV, movies, sports, shows, and apps that were blocked before, '
        'will now be available.',
  ),
  QAModel(
    qText: 'Safe, Private, and Anonymous',
    aText:
        'Change your IP adress, Hide your location, protect yourself on public Wifi, '
        'and surf the internet anonymously.',
  ),
  QAModel(
    qText: 'Easy, Fast, and Stable',
    aText: 'Confused by VPN speed and stability before? Now choose '
        'CURRENTVPN, and enjoy smooth connection for 12 houres with no drops.',
  ),
];
