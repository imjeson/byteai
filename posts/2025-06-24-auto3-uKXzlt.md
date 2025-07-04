---
title: 'Okta推出跨应用访问功能以帮助确保企业中AI代理的安全'
date: 2025-06-25
author: ByteAILab
---

Okta与ISV合作建立了一种新的开放协议，以安全管理AI代理在各系统之间的交互

Okta, Inc. (NASDAQ: OKTA), 领先的独立身份合作伙伴，今天宣布推出跨应用访问（Cross App Access），这是一种新协议，旨在帮助确保AI代理的安全。![图片](https://ai-techpark.com/wp-content/uploads/Okta-Introduces.jpg){ width=60% }

---
作为OAuth的扩展，它为代理驱动和应用程序之间的交互带来了可见性和控制，允许IT团队决定哪些应用程序正在连接以及AI代理可以访问哪些信息。

为什么这很重要：

更多的AI工具正在使用像模型上下文协议（Model Context Protocol, MCP）和代理对代理（Agent2Agent, A2A）这样的协议，将它们的AI学习模型与企业内相关的数据和应用程序连接起来。然而，为了在代理和应用程序（如Google Drive或Slack）之间建立连接，用户需要手动登录并同意授予代理对每个集成的访问权限。

这些应用程序之间的连接发生在没有监督的情况下，IT和安全团队不得不依赖手动且不一致的流程来获得可见性。这在企业安全中造成了一个巨大的盲点，并扩大了一个日益不受管理的边界。

随着AI代理的爆炸性增长，这一挑战将进一步加剧，它们引入了新的非确定性访问模式，跨越系统边界，自行触发操作并与敏感数据交互。

目前的安全控制措施无法应对它们的自主性、规模和不可预测性。现有身份标准并未设计用于保护企业中相互连接的服务和应用程序的网络——尽管MCP改善了代理之间的透明度和沟通，但并不能帮助管理访问。

“尽管我们正在与MCP和A2A社区积极合作，以改善AI代理的功能，但其对数据的增加访问以及应用程序之间连接的激增将带来新的身份安全挑战，”Okta的首席产品官Arnab Bose表示。“通过跨应用访问，Okta很高兴能够为代理在企业中的交互带来监督和控制。由于协议的强大程度取决于支持它们的生态系统，我们也致力于与软件行业合作，以帮助代理安全、标准化访问所有应用程序。”

我们推出的——跨应用访问

Okta与行业领先的ISV合作，推出跨应用访问，以帮助ISV在AI驱动的世界中提供安全的企业级集成。预计将在今年第三季度作为功能在部分Okta平台客户中可用，使ISV的企业客户能够更好地将他们的AI工具与其他应用程序和数据连接，消除重复的授权同意屏幕，为最终用户提供更无缝的体验，并管理代理的访问以提高安全性和合规性。

例如，某个AI工具可能需要访问一个内部通信应用程序，以检索信息或代表用户采取行动。如果没有跨应用访问，用户必须通过公司的单点登录（SSO）登录AI工具，然后分别手动批准每个集成，单独登录并同意内部通信应用程序。这一过程需要对其他必要的应用程序（如文件存储服务或项目管理应用程序）重复进行。每次的同意和访问对于企业客户来说都是不可见的。

通过跨应用访问，该AI工具可以请求从Okta获取对内部通信应用程序的访问，Okta根据企业政策评估请求，并确定该工具是否被授权访问特定用户的内部通信应用程序数据。如果被允许，Okta会向AI工具发放一个令牌，该工具将其呈现给内部通信应用程序进行验证。一旦验证通过，内部通信应用程序便会提供访问权限——所有这些都无需额外的用户互动，并在企业定义的安全控制下进行。企业可以看到该AI工具何时代表用户访问了内部通信应用程序。

ISV面临的挑战

ISV面临着为其企业客户支持安全、无缝跨应用体验的日益压力，但基础身份和访问流程往往不一致、分散且难以扩展。这些集成通常依赖于高风险的令牌交换和用户授予的访问，从而导致令牌泛滥和可见性缺口。随着AI代理开始在系统之间自主连接，这种复杂性和风险只会增加。

跨应用访问如何帮助：跨应用访问使ISV能够为AI代理和其他自主系统（如工作流自动化工具）提供安全的企业级集成。通过将访问控制转移给身份提供者（如Okta），ISV可以降低安全风险，简化集成复杂性，更好地支持客户的合规性和治理需求。

企业面临的挑战

将AI工具与现有数据和系统集成提出了重大障碍。许多企业目前依赖临时方法，如长效令牌和分散的访问控制，使这些集成固有地存在风险。由于缺乏对代理如何跨应用程序访问数据的可见性和控制，AI采用遭遇了停滞。

除了安全性外，当代理无法代表用户无缝行动时，用户体验也会受到影响，这使得重复和过时的授权流程变得更加复杂。

跨应用访问如何帮助：通过跨应用访问，企业可以增强安全性和可用性，赋能IT管理代理访问，同时为用户提供无缝、低摩擦的体验。它支持应用程序和AI系统之间的安全互操作性，使企业更容易采用创新的ISV解决方案，而无需妥协监督或性能。
---
感谢阅读！如果您对AI的更多资讯感兴趣，可以查看更多AI文章：[GPTNB](https://gptnb.com)。