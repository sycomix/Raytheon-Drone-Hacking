.class public Lcom/google/gdata/data/Source$SourceHandler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Source$SourceHandler$LogoHandler;,
        Lcom/google/gdata/data/Source$SourceHandler$IconHandler;,
        Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;,
        Lcom/google/gdata/data/Source$SourceHandler$IdHandler;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/Source;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    .line 433
    const-class v0, Lcom/google/gdata/data/Source;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 434
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 0
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p3, "extClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 440
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 448
    const-string v6, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 450
    const-string v6, "id"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 452
    new-instance v6, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    .line 550
    :goto_0
    return-object v6

    .line 454
    :cond_0
    const-string v6, "updated"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 456
    new-instance v6, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;

    invoke-direct {v6, p0}, Lcom/google/gdata/data/Source$SourceHandler$UpdatedHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;)V

    goto :goto_0

    .line 458
    :cond_1
    const-string v6, "category"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 460
    new-instance v2, Lcom/google/gdata/data/Category;

    invoke-direct {v2}, Lcom/google/gdata/data/Category;-><init>()V

    .line 462
    .local v2, "cat":Lcom/google/gdata/data/Category;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    instance-of v6, v6, Lcom/google/gdata/data/Kind$Adaptable;

    if-eqz v6, :cond_2

    .line 463
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptable;

    .line 467
    .local v0, "adaptable":Lcom/google/gdata/data/Kind$Adaptable;
    :goto_1
    new-instance v6, Lcom/google/gdata/data/Category$AtomHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v8, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v8, v8, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v8, v8, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    invoke-direct {v6, v2, v7, v8, v0}, Lcom/google/gdata/data/Category$AtomHandler;-><init>(Lcom/google/gdata/data/Category;Lcom/google/gdata/data/ExtensionProfile;Ljava/util/Set;Lcom/google/gdata/data/Kind$Adaptable;)V

    goto :goto_0

    .line 465
    .end local v0    # "adaptable":Lcom/google/gdata/data/Kind$Adaptable;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "adaptable":Lcom/google/gdata/data/Kind$Adaptable;
    goto :goto_1

    .line 470
    .end local v0    # "adaptable":Lcom/google/gdata/data/Kind$Adaptable;
    .end local v2    # "cat":Lcom/google/gdata/data/Category;
    :cond_3
    const-string v6, "title"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 472
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v3

    .line 475
    .local v3, "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_4

    .line 476
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateTitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 480
    :cond_4
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    .line 481
    iget-object v6, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto :goto_0

    .line 483
    .end local v3    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_5
    const-string v6, "subtitle"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 485
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v3

    .line 488
    .restart local v3    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_6

    .line 489
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateSubtitle:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 493
    :cond_6
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    .line 494
    iget-object v6, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 496
    .end local v3    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_7
    const-string v6, "rights"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 498
    invoke-static {p3}, Lcom/google/gdata/data/TextConstruct;->getChildHandler(Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;

    move-result-object v3

    .line 501
    .restart local v3    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v6, :cond_8

    .line 502
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateRights:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 506
    :cond_8
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->textConstruct:Lcom/google/gdata/data/TextConstruct;

    iput-object v7, v6, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    .line 507
    iget-object v6, v3, Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    goto/16 :goto_0

    .line 509
    .end local v3    # "chi":Lcom/google/gdata/data/TextConstruct$ChildHandlerInfo;
    :cond_9
    const-string v6, "icon"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 511
    new-instance v6, Lcom/google/gdata/data/Source$SourceHandler$IconHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/gdata/data/Source$SourceHandler$IconHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    goto/16 :goto_0

    .line 513
    :cond_a
    const-string v6, "logo"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 515
    new-instance v6, Lcom/google/gdata/data/Source$SourceHandler$LogoHandler;

    invoke-direct {v6, p0, v7}, Lcom/google/gdata/data/Source$SourceHandler$LogoHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V

    goto/16 :goto_0

    .line 517
    :cond_b
    const-string v6, "link"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 519
    new-instance v5, Lcom/google/gdata/data/Link;

    invoke-direct {v5}, Lcom/google/gdata/data/Link;-><init>()V

    .line 520
    .local v5, "link":Lcom/google/gdata/data/Link;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 521
    new-instance v6, Lcom/google/gdata/data/Link$AtomHandler;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v5, v7}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 523
    .end local v5    # "link":Lcom/google/gdata/data/Link;
    :cond_c
    const-string v6, "author"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 525
    new-instance v1, Lcom/google/gdata/data/Person;

    invoke-direct {v1}, Lcom/google/gdata/data/Person;-><init>()V

    .line 526
    .local v1, "author":Lcom/google/gdata/data/Person;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v6, Lcom/google/gdata/data/Person$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v1, v7}, Lcom/google/gdata/data/Person$AtomHandler;-><init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 529
    .end local v1    # "author":Lcom/google/gdata/data/Person;
    :cond_d
    const-string v6, "contributor"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 531
    new-instance v4, Lcom/google/gdata/data/Person;

    invoke-direct {v4}, Lcom/google/gdata/data/Person;-><init>()V

    .line 532
    .local v4, "contributor":Lcom/google/gdata/data/Person;
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 533
    new-instance v6, Lcom/google/gdata/data/Person$AtomHandler;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/gdata/data/Source$SourceHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v6, v4, v7}, Lcom/google/gdata/data/Person$AtomHandler;-><init>(Lcom/google/gdata/data/Person;Lcom/google/gdata/data/ExtensionProfile;)V

    goto/16 :goto_0

    .line 535
    .end local v4    # "contributor":Lcom/google/gdata/data/Person;
    :cond_e
    const-string v6, "generator"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 537
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v6, v6, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    if-eqz v6, :cond_f

    .line 538
    new-instance v6, Lcom/google/gdata/util/ParseException;

    sget-object v7, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v7, v7, Lcom/google/gdata/client/CoreErrorDomain;->duplicateGenerator:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v6, v7}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v6

    .line 542
    :cond_f
    iget-object v6, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v6, v6, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    new-instance v7, Lcom/google/gdata/data/Generator;

    invoke-direct {v7}, Lcom/google/gdata/data/Generator;-><init>()V

    iput-object v7, v6, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    .line 543
    new-instance v6, Lcom/google/gdata/data/Generator$AtomHandler;

    iget-object v7, p0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v7, v7, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v7, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v7}, Lcom/google/gdata/data/Generator$AtomHandler;-><init>(Lcom/google/gdata/data/Generator;)V

    goto/16 :goto_0

    .line 547
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v6

    goto/16 :goto_0

    :cond_11
    move-object v6, v7

    .line 550
    goto/16 :goto_0
.end method
