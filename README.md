# SYS-Learning Package "DevOps"
> A learning pack to learn the basics of DevOps, what it is for and what you need it for.

## DevOps the practice (CI/CD for Example)
DevOps combies development and operations to incerease the efficiency, speed, and security of software development and helps to prevent or solve problems that may arise. DevOps Integrates specialist departments directly in order to speed up the software development process for acceptance and delivery.
<p align="center">
<img src="https://images.ctfassets.net/xz1dnu24egyd/2S16xLgZGnBkxXgFVQOrxv/24e5808aba2b4c7024c15daa6b6ef5f7/loop-white.svg" width="350" height="350">
</p>

CI/CD exists to help these processes. CI stands for "Continuous Integration" (Kontinuierliche Integration), [CI](https://www.jetbrains.com/de-de/teamcity/ci-cd-guide/continuous-integration/) is about the regular transfer of code changes from all project members to a central repository. The goal is to create a reliable process for compiling and providing software, by promoting collaboration, automation and feedback cycles. Ideally, this process should be automated and run several times a day.
<img src="https://www.jetbrains.com/teamcity/ci-cd-guide/continuous-integration/img/Continuous_integration_desktop.png" >
CD stands for two things: Continuous Delivery (Kontinuierliche Auslieferung) and Continuous Deployment (Kontinuierliche Bereitstellung). Continuous Delivery is the automation of manual steps that are necessary for the compilation and publication of software. The goal is to always keep the code of a project in a release-ready state. [Continuous delivery](https://www.jetbrains.com/de-de/teamcity/ci-cd-guide/continuous-delivery/) can speed up software delivery processes by making them automated instead of manual.
<img src="https://www.jetbrains.com/teamcity/ci-cd-guide/continuous-delivery/img/Continuous_delivery_desktop.png" >
[Continuous deployment](https://www.jetbrains.com/de-de/teamcity/ci-cd-guide/continuous-deployment/), on the other hand, takes the idea of automating build, test and deployment steps. Small code changes are regularly applied by running them through an automatic build and test process. If no problems arise, the changes are transferred to the production process. Continuous deployment allows new features to be implemented as quickly as possible.
<img src="https://www.jetbrains.com/teamcity/ci-cd-guide/continuous-deployment/img/Continuous_deployment_desktop.png" >

> [!NOTE]
> CI/CD allows many teams to publish more frequent updates without having to compromise on quality. With CI/CD, code changes run through an automated pipeline that takes over build, test and deployment tasks and > alerts in the event of problems.

> [!IMPORTANT]
> CI/CD are DevOps methods that serve to improve the workflow. They are used to test automated builds and test systems more quickly and to provide better and faster feedback.

## IoT – What does it mean and where to use it ?
IoT is the Internet of Things. It is a term used to describe the technologies and global infrastructure of information societies that enable physical and virtual objects to be networked with each other and to work together using information and communication technologies.

<img src="https://blog.item24.com/item-wp-content/uploads/2022/09/internet-of-things-iot-einfach-erklaert-item-blog-artikelbild-neu.jpg" >

> [!TIP]
> Personally, I would use it to network my devices, the easiest and most efficient way to use my devices in my home.

Even today, IoT concepts are already being used to make life at easier, for example SmartHome is the smart and efficient way to control your home.

## Bicep – Microsoft Language for Resources
Bicep is a Domain Specific Language (DSL) for deploying Azure resources declaratively. It goal is to simplify the authoring experience with a cleaner syntax, improve type safety and better support for modularity and code reuse. [Bicep](https://github.com/Azure/bicep) is transparent, that means anything what can be done in ARM Template can be done in Bicep.

<img src="https://miro.medium.com/v2/resize:fit:1400/1*KLJZ51orXe6zf7NTUhg5gA.png" >

Bicep code is transpiled into ARM template JSON files, which effectively treats the ARM template as an intermediate language. In addition, the language should be transparent at all times for all underlying platforms.

> [!NOTE]
> Declaratively: The description of the problem is in the foreground. The solution is calculated automatically. <br>
> Transpiled: Is the process of converting source code from one programming language to another.

## Azure Subscription, Resource Groups
Azure Subscription is an arrangement with Microsoft for the use of one or more cloud platforms or services that is used for provision, control and billing. After creating an Azure account, you get free access to all Azure services for 12 months. In total there are more than 55 Azure services.

<p align="center">
<img src="https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-setup-guide/media/organize-resources/scope-levels.png" >
</p>

Resource groups are containers that contain related resources for Azure solutions. The resource group can contain all resources for the solution or only the resources that you want to manage as a group. The resource group stores metadata about the resources.

> [!IMPORTANT]
> Therefore, when you specify a location for the resource group you are specifying where that metadata is stored. For compliance reasons, you may need to ensure that your data is stored in a particular region.

## Blob – Storage Type and what to store in it ?
[Blob storage](https://azure.microsoft.com/de-de/products/storage/blobs/?ef_id=_k_EAIaIQobChMIkJ6UyuDchAMVA5doCR1GlAxJEAAYASAAEgLoVvD_BwE_k_&OCID=AIDcmmzzaokddl_SEM__k_EAIaIQobChMIkJ6UyuDchAMVA5doCR1GlAxJEAAYASAAEgLoVvD_BwE_k_&gad_source=1&gclid=EAIaIQobChMIkJ6UyuDchAMVA5doCR1GlAxJEAAYASAAEgLoVvD_BwE) is a type of cloud storage for unstructured data. A "blob", short for binary large object, is a mass of data in binary form that does not necessarily match a file format. These measures of data are called data lakes. In everyday life, the strong scalability and security supports the use of blob storages.

<img src="https://microsoftlearning.github.io/AZ-204-DevelopingSolutionsforMicrosoftAzure/Instructions/Labs/media/Lab03-Diagram.png" >

## Git – Source Control
Git is a shared version control system that enables software development teams to create multiple separate local copies of the project's code base.
### Informationen zu Pull Request
A pull request is a proposal to merge a set of changes from one branch into another. In a pull request, project members can review and discuss the proposed changes before integrating the changes into the standard code base. Pull requests also show the differences between the content in the source branch and the content in the target branch.
> [!NOTE]
> - When working in the shared repository model, it is recommended to use a topic branch for your pull request. While you can send pull requests from any branch or commit, a topic branch allows you to push follow-up commits when you need to update your submitted changes.
> - You should be careful when pushing to avoid committing on the main branch. You also have to be careful not to change the history of the repository too much when you force push.
### Informationen zu Branch
Branches allow you to develop features, fix bugs and safely experiment with new ideas in an area of your repository. You always create a branch from an existing branch. Normally you would create a new branch from the standard branch of your repository. You can then work in this branch regardless of changes made by other people in the repository.

<img src="https://docs.github.com/assets/cb-2058/mw-1440/images/help/branches/pr-retargeting-diagram1.webp">

### Informationen zu Commit
Similar to saving a file that has been edited, a commit records changes to one or more files in your branch. Git assigns each commit a unique ID, known as a SHA or hash. This identifies the following:

- The respective changes
- The time of the changes
- Who made the changes

When you make a commit, you must add a commit message that briefly describes the changes.

## GitHub
GitHub is a onlinecompany for software development. GitHub allows to create, store, change, merge, and collaborate on files or code. Any member of a team can access the GitHub repository and see the most recent version in real-time. Then, they can make edits or changes that the other collaborators also see.
### Repository
A repository is the most basic element of GitHub. It is a place where you can store your code and files, including their version history. Repositories can have multiple project members and can be either public or private. <br>To see how to create a new repository, go to https://github.com/new. For instructions, see [Quick Start for Repositories.](https://docs.github.com/de/repositories/creating-and-managing-repositories/quickstart-for-repositories)
### Action
With GitHub Actions, you can automate, customise and execute your software development workflows directly in your repository. You can discover, create and share actions to execute any job (including CI/CD). You can also combine actions into a fully customised workflow. For more informations, see [GitHub Actions-Dokumentation.](https://docs.github.com/de/actions)
### Service Prinzipal-Azure Deployment
Service Principals are security objects within a Microsoft Entra application that define what an application can do in a particular tenant. They are set up in the Azure portal during application registration and configured for access to Azure resources, such as Azure DevOps. By adding service principals to your organisation and setting up permissions, we can determine whether a service principal is authorised to access your company resources and to which resources. To learn how this works, you can simply take this [short tutorial.](https://learn.microsoft.com/en-us/training/modules/authenticate-azure-deployment-pipeline-service-principals/)
