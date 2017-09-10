.class public Lcom/google/gdata/data/Source;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Source$1;,
        Lcom/google/gdata/data/Source$SourceHandler;,
        Lcom/google/gdata/data/Source$SourceState;
    }
.end annotation


# instance fields
.field protected srcState:Lcom/google/gdata/data/Source$SourceState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 126
    new-instance v0, Lcom/google/gdata/data/Source$SourceState;

    invoke-direct {v0}, Lcom/google/gdata/data/Source$SourceState;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    .line 127
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/data/Source;)V
    .locals 1
    .param p1, "sourceSource"    # Lcom/google/gdata/data/Source;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 136
    iget-object v0, p1, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    .line 137
    return-void
.end method


# virtual methods
.method public addHtmlLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "htmlUri"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 266
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 267
    .local v0, "link":Lcom/google/gdata/data/Link;
    const-string v1, "alternate"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setRel(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setType(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 271
    if-eqz p2, :cond_0

    .line 272
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/Link;->setHrefLang(Ljava/lang/String;)V

    .line 275
    :cond_0
    if-eqz p3, :cond_1

    .line 276
    invoke-virtual {v0, p3}, Lcom/google/gdata/data/Link;->setTitle(Ljava/lang/String;)V

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, v1, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public addLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/gdata/data/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/Source;->addLink(Lcom/google/gdata/data/Link;)V

    .line 224
    return-object v0
.end method

.method public addLink(Lcom/google/gdata/data/Link;)V
    .locals 1
    .param p1, "link"    # Lcom/google/gdata/data/Link;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 306
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "source"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/Source;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/Source;->generateInnerAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/Source;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 315
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "source"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method protected generateInnerAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 332
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 333
    sget-object v5, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "id"

    iget-object v7, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v7, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v8, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v5, :cond_1

    .line 337
    sget-object v5, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "updated"

    iget-object v7, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v7, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v7}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v6, v8, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 342
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Category;

    .line 343
    .local v1, "cat":Lcom/google/gdata/data/Category;
    invoke-virtual {v1, p1}, Lcom/google/gdata/data/Category;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_0

    .line 345
    .end local v1    # "cat":Lcom/google/gdata/data/Category;
    :cond_2
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 347
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    if-eqz v5, :cond_3

    .line 348
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    const-string v6, "title"

    invoke-virtual {v5, p1, v6}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 351
    :cond_3
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    if-eqz v5, :cond_4

    .line 352
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    const-string v6, "subtitle"

    invoke-virtual {v5, p1, v6}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 355
    :cond_4
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    if-eqz v5, :cond_5

    .line 356
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    const-string v6, "rights"

    invoke-virtual {v5, p1, v6}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 359
    :cond_5
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 360
    sget-object v5, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "icon"

    iget-object v7, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v7, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v8, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 363
    :cond_6
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 364
    sget-object v5, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v6, "logo"

    iget-object v7, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v7, v7, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v8, v7}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 367
    :cond_7
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 368
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/data/Link;

    .line 369
    .local v4, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v4, p1, p2}, Lcom/google/gdata/data/Link;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_1

    .line 371
    .end local v4    # "link":Lcom/google/gdata/data/Link;
    :cond_8
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 373
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 374
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 375
    .local v0, "author":Lcom/google/gdata/data/Person;
    const-string v5, "author"

    invoke-virtual {v0, p2, p1, v5}, Lcom/google/gdata/data/Person;->generateAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 377
    .end local v0    # "author":Lcom/google/gdata/data/Person;
    :cond_9
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 379
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 380
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->contributors:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/Person;

    .line 381
    .local v2, "contributor":Lcom/google/gdata/data/Person;
    const-string v5, "contributor"

    invoke-virtual {v2, p2, p1, v5}, Lcom/google/gdata/data/Person;->generateAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 383
    .end local v2    # "contributor":Lcom/google/gdata/data/Person;
    :cond_a
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 385
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    if-eqz v5, :cond_b

    .line 386
    iget-object v5, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v5, v5, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    invoke-virtual {v5, p1}, Lcom/google/gdata/data/Generator;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    .line 388
    :cond_b
    return-void
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->authors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->categories:Ljava/util/HashSet;

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->contributors:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getGenerator()Lcom/google/gdata/data/Generator;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    return-object v0
.end method

.method public getHtmlLink()Lcom/google/gdata/data/Link;
    .locals 3

    .prologue
    .line 288
    const-string v1, "alternate"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/Source;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 289
    .local v0, "htmlLink":Lcom/google/gdata/data/Link;
    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Link;

    .line 190
    .local v1, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    .end local v1    # "link":Lcom/google/gdata/data/Link;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getLinks(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "relToMatch"    # Ljava/lang/String;
    .param p2, "typeToMatch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Link;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/Link;>;"
    iget-object v3, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v3, v3, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Link;

    .line 210
    .local v1, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    .end local v1    # "link":Lcom/google/gdata/data/Link;
    :cond_1
    return-object v2
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getRights()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getSubtitle()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getTitle()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/google/gdata/data/Source$SourceHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/Source$SourceHandler;-><init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 408
    .local v0, "handler":Lcom/google/gdata/data/Source$SourceHandler;
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "source"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/google/gdata/data/Source$SourceHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/Source$SourceHandler;-><init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 426
    .local v0, "handler":Lcom/google/gdata/data/Source$SourceHandler;
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "source"

    invoke-virtual {v1, p2, v0, v2, v3}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public removeLinks()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 250
    return-void
.end method

.method public removeLinks(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "relToMatch"    # Ljava/lang/String;
    .param p2, "typeToMatch"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v2, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v2, v2, Lcom/google/gdata/data/Source$SourceState;->links:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 237
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/Link;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Link;

    .line 239
    .local v1, "link":Lcom/google/gdata/data/Link;
    invoke-virtual {v1, p1, p2}, Lcom/google/gdata/data/Link;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 243
    .end local v1    # "link":Lcom/google/gdata/data/Link;
    :cond_1
    return-void
.end method

.method public setGenerator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Generator;
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lcom/google/gdata/data/Generator;

    invoke-direct {v0}, Lcom/google/gdata/data/Generator;-><init>()V

    .line 173
    .local v0, "gen":Lcom/google/gdata/data/Generator;
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Generator;->setVersion(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p2}, Lcom/google/gdata/data/Generator;->setUri(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p3}, Lcom/google/gdata/data/Generator;->setName(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/Source;->setGenerator(Lcom/google/gdata/data/Generator;)V

    .line 177
    return-object v0
.end method

.method public setGenerator(Lcom/google/gdata/data/Generator;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/Generator;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->generator:Lcom/google/gdata/data/Generator;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->logo:Ljava/lang/String;

    return-void
.end method

.method public setRights(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->rights:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setSubtitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->subtitle:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setTitle(Lcom/google/gdata/data/TextConstruct;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->title:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iput-object p1, v0, Lcom/google/gdata/data/Source$SourceState;->updated:Lcom/google/gdata/data/DateTime;

    return-void
.end method
