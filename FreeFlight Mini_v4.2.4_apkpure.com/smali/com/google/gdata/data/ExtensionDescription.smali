.class public Lcom/google/gdata/data/ExtensionDescription;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ExtensionDescription.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/ExtensionDescription$Handler;,
        Lcom/google/gdata/data/ExtensionDescription$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/ExtensionPoint;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/gdata/data/ExtensionDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private aggregate:Z

.field private arbitraryXml:Z

.field private extensionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private localName:Ljava/lang/String;

.field private mixedContent:Z

.field private namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field private repeatable:Z

.field private required:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    .line 76
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    .line 82
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    .line 87
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V
    .locals 7
    .param p2, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    const/4 v4, 0x0

    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V
    .locals 9
    .param p2, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "required"    # Z
    .param p5, "repeatable"    # Z
    .param p6, "aggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    const/4 v7, 0x0

    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZZZ)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZZZ)V
    .locals 1
    .param p2, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "required"    # Z
    .param p5, "repeatable"    # Z
    .param p6, "aggregate"    # Z
    .param p7, "arbitraryXml"    # Z
    .param p8, "mixedContent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "ZZZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    const/4 v0, 0x0

    .line 213
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    .line 76
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    .line 82
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    .line 87
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    .line 214
    iput-object p2, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 215
    iput-object p3, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->extensionClass:Ljava/lang/Class;

    .line 217
    iput-boolean p4, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    .line 218
    iput-boolean p5, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    .line 219
    iput-boolean p6, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    .line 220
    iput-boolean p7, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    .line 221
    iput-boolean p8, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/ExtensionDescription;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/gdata/data/ExtensionDescription;Lcom/google/gdata/util/common/xml/XmlNamespace;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/gdata/data/ExtensionDescription;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/gdata/data/ExtensionDescription;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Ljava/lang/Class;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->extensionClass:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/gdata/data/ExtensionDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/gdata/data/ExtensionDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/gdata/data/ExtensionDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/gdata/data/ExtensionDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    return p1
.end method

.method static synthetic access$702(Lcom/google/gdata/data/ExtensionDescription;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/ExtensionDescription;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    return p1
.end method

.method public static getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)",
            "Lcom/google/gdata/data/ExtensionDescription;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    const-class v0, Lcom/google/gdata/data/ExtensionDescription$Default;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/data/ExtensionDescription$Default;

    .line 169
    .local v9, "defAnnot":Lcom/google/gdata/data/ExtensionDescription$Default;
    if-nez v9, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default description found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->nsAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->nsUri()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->localName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->isRequired()Z

    move-result v4

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->isRepeatable()Z

    move-result v5

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->isAggregate()Z

    move-result v6

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->allowsArbitraryXml()Z

    move-result v7

    invoke-interface {v9}, Lcom/google/gdata/data/ExtensionDescription$Default;->allowsMixedContent()Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final allowsArbitraryXml()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    return v0
.end method

.method public final allowsMixedContent()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    return v0
.end method

.method public compareTo(Lcom/google/gdata/data/ExtensionDescription;)I
    .locals 5
    .param p1, "desc"    # Lcom/google/gdata/data/ExtensionDescription;

    .prologue
    .line 291
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "ns1":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 293
    const-string v0, ""

    .line 295
    :cond_0
    iget-object v3, p1, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v3}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "ns2":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 297
    const-string v1, ""

    .line 300
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 301
    .local v2, "nscomp":I
    if-eqz v2, :cond_2

    .line 305
    .end local v2    # "nscomp":I
    :goto_0
    return v2

    .restart local v2    # "nscomp":I
    :cond_2
    iget-object v3, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/google/gdata/data/ExtensionDescription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ExtensionDescription;->compareTo(Lcom/google/gdata/data/ExtensionDescription;)I

    move-result v0

    return v0
.end method

.method public generateConfig(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v4, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "namespace"

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v2}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "localName"

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "extensionClass"

    iget-object v2, p0, Lcom/google/gdata/data/ExtensionDescription;->extensionClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "required"

    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "repeatable"

    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "aggregate"

    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "arbitraryXml"

    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "mixedContent"

    iget-boolean v2, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "extensionDescription"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/ExtensionDescription;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/ExtensionDescription;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 414
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gdataConfigNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "extensionDescription"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final getExtensionClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionDescription;->extensionClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method public final isAggregate()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    return v0
.end method

.method public final isRepeatable()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    return v0
.end method

.method public setAggregate(Z)V
    .locals 0
    .param p1, "aggregate"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->aggregate:Z

    .line 268
    return-void
.end method

.method public setArbitraryXml(Z)V
    .locals 0
    .param p1, "arbitraryXml"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->arbitraryXml:Z

    .line 274
    return-void
.end method

.method public setExtensionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/data/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/Extension;>;"
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->extensionClass:Ljava/lang/Class;

    .line 248
    return-void
.end method

.method public setLocalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->localName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setMixedContent(Z)V
    .locals 0
    .param p1, "mixedContent"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->mixedContent:Z

    .line 280
    return-void
.end method

.method public setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V
    .locals 0
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/gdata/data/ExtensionDescription;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 236
    return-void
.end method

.method public setRepeatable(Z)V
    .locals 0
    .param p1, "repeatable"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->repeatable:Z

    .line 262
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/gdata/data/ExtensionDescription;->required:Z

    .line 256
    return-void
.end method
