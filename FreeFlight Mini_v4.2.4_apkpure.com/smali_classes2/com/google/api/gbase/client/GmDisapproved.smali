.class public Lcom/google/api/gbase/client/GmDisapproved;
.super Ljava/lang/Object;
.source "GmDisapproved.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 44
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/api/gbase/client/GmDisapproved;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 45
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 46
    const-string v1, "disapproved"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 54
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v1, "disapproved"

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/gdata/util/XmlParser$ElementHandler;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-object v0
.end method
