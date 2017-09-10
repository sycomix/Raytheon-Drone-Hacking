.class public Lcom/google/gdata/data/extensions/LastModifiedBy;
.super Lcom/google/gdata/data/Person;
.source "LastModifiedBy.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "lastModifiedBy"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "lastModifiedBy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/Person;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/Person;)V
    .locals 3
    .param p1, "person"    # Lcom/google/gdata/data/Person;

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/google/gdata/data/Person;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/data/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/data/Person;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/Person;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p4, "localName"    # Ljava/lang/String;
    .param p6, "generator"    # Lcom/google/gdata/data/AttributeGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Lcom/google/gdata/data/AttributeGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    .local p5, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/LastModifiedBy;->generate(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;)V

    .line 64
    return-void
.end method
