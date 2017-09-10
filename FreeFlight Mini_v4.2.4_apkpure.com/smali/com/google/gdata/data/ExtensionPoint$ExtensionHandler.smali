.class public Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.super Lcom/google/gdata/data/AbstractExtension$AttributesHandler;
.source "ExtensionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/ExtensionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtensionHandler"
.end annotation


# instance fields
.field protected extManifest:Lcom/google/gdata/data/ExtensionManifest;

.field protected extProfile:Lcom/google/gdata/data/ExtensionProfile;

.field protected extendedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected hasExtensions:Z

.field final synthetic this$0:Lcom/google/gdata/data/ExtensionPoint;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V
    .locals 1
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
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
    .line 705
    .local p3, "extendedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V

    .line 706
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p2, "profile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/ExtensionPoint;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p3, "extendedClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/ExtensionPoint;>;"
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    .line 720
    invoke-direct {p0, p1, p4}, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;-><init>(Lcom/google/gdata/data/AbstractExtension;Lorg/xml/sax/Attributes;)V

    .line 722
    iput-object p2, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    .line 723
    iput-object p3, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extendedClass:Ljava/lang/Class;

    .line 725
    invoke-virtual {p2, p3}, Lcom/google/gdata/data/ExtensionProfile;->getManifest(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionManifest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extManifest:Lcom/google/gdata/data/ExtensionManifest;

    .line 726
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extManifest:Lcom/google/gdata/data/ExtensionManifest;

    if-eqz v0, :cond_0

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->hasExtensions:Z

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {p1, v0, p3, p0}, Lcom/google/gdata/data/ExtensionPoint;->initializeArbitraryXml(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Lcom/google/gdata/util/XmlParser$ElementHandler;)V

    .line 730
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 7
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
    .line 738
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->hasExtensions:Z

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    iget-object v1, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extendedClass:Ljava/lang/Class;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionPoint;->getExtensionHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v6

    .line 743
    .local v6, "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    if-eqz v6, :cond_0

    .line 748
    .end local v6    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :goto_0
    return-object v6

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v6

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-super {p0}, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;->processEndElement()V

    .line 756
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extManifest:Lcom/google/gdata/data/ExtensionManifest;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->isStrictValidation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    iget-object v5, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->extManifest:Lcom/google/gdata/data/ExtensionManifest;

    invoke-virtual {v4, v5}, Lcom/google/gdata/data/ExtensionPoint;->checkRequiredExtensions(Lcom/google/gdata/data/ExtensionManifest;)V

    .line 765
    :cond_0
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v4}, Lcom/google/gdata/data/ExtensionPoint;->access$000(Lcom/google/gdata/data/ExtensionPoint;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Extension;

    .line 766
    .local v1, "extension":Lcom/google/gdata/data/Extension;
    instance-of v4, v1, Lcom/google/gdata/data/ValidatingExtension;

    if-eqz v4, :cond_1

    .line 767
    check-cast v1, Lcom/google/gdata/data/ValidatingExtension;

    .end local v1    # "extension":Lcom/google/gdata/data/Extension;
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    invoke-interface {v1, v4}, Lcom/google/gdata/data/ValidatingExtension;->validate(Lcom/google/gdata/data/ExtensionPoint;)V

    goto :goto_0

    .line 771
    :cond_2
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    invoke-static {v4}, Lcom/google/gdata/data/ExtensionPoint;->access$100(Lcom/google/gdata/data/ExtensionPoint;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 772
    .local v0, "extList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/Extension;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Extension;

    .line 773
    .restart local v1    # "extension":Lcom/google/gdata/data/Extension;
    instance-of v4, v1, Lcom/google/gdata/data/ValidatingExtension;

    if-eqz v4, :cond_4

    .line 774
    check-cast v1, Lcom/google/gdata/data/ValidatingExtension;

    .end local v1    # "extension":Lcom/google/gdata/data/Extension;
    iget-object v4, p0, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->this$0:Lcom/google/gdata/data/ExtensionPoint;

    invoke-interface {v1, v4}, Lcom/google/gdata/data/ValidatingExtension;->validate(Lcom/google/gdata/data/ExtensionPoint;)V

    goto :goto_1

    .line 778
    .end local v0    # "extList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/Extension;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
