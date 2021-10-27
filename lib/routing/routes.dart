const rootRoute = "/";

const dashboardPageDisplayName = "Dashboard";
const dashboardPageRoute = "/dashboard";

const pharmaciesPageDisplayName = "Pharmacies";
const pharmaciesPageRoute = "/pharmacies";

const medicamentsPageDisplayName = "Médicaments";
const medicamentsPageRoute = "/medicaments";

const catmedicamentsPageDisplayName = "Catégories";
const catmedicamentsPageRoute = "/catégories";

const tabmedicamentsPageDisplayName = "Médicaments";
const tabmedicamentsPageRoute = "/tabmedicaments";




const transactionssPageDisplayName = "Transactions";
const transactionsPageRoute = "/transactions";


const donsPageDisplayName = "Dons";
const donsPageRoute = "/dons";


const commandesPageDisplayName = "Commandes";
const commandesPageRoute = "/commandes";


const livraisonsPageDisplayName = "Livraisons";
const livraisonsPageRoute = "/livraisons";


const publicitesPageDisplayName = "Publicités";
const publicitesPageRoute = "/publicites";



const facturesPageDisplayName = "Factures pharmacies";
const facturesPageRoute = "/facturespharmacies";


///const parametresPageDisplayName = "Paramétres";
// parametresPageRoute = "/parametres";

const profilePageDisplayName = "Profil";
const profilePageRoute = "/profil";


const equipePageDisplayName = "Equipe";
const equipePageRoute = "/equipe";



const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}



List<MenuItem> sideMenuItemRoutes = [
 MenuItem(dashboardPageDisplayName, dashboardPageRoute),
 MenuItem(pharmaciesPageDisplayName, pharmaciesPageRoute),

  MenuItem(catmedicamentsPageDisplayName, catmedicamentsPageRoute),
   MenuItem(tabmedicamentsPageDisplayName, tabmedicamentsPageRoute),
  MenuItem(transactionssPageDisplayName, transactionsPageRoute),
   MenuItem(donsPageDisplayName, donsPageRoute),
   MenuItem(commandesPageDisplayName, commandesPageRoute),
    MenuItem(livraisonsPageDisplayName, livraisonsPageRoute),
     MenuItem(publicitesPageDisplayName, publicitesPageRoute),
      MenuItem(facturesPageDisplayName, facturesPageRoute),
       //MenuItem(parametresPageDisplayName, parametresPageRoute),
          MenuItem(profilePageDisplayName, profilePageRoute),
             MenuItem(equipePageDisplayName, equipePageRoute),
 MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
