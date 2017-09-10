.class public Lcom/google/api/gbase/client/GmPublishingPriority;
.super Ljava/lang/Object;
.source "GmPublishingPriority.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "publishing_priority"


# instance fields
.field private value:Lcom/google/api/gbase/client/GmPublishingPriority$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$002(Lcom/google/api/gbase/client/GmPublishingPriority;Lcom/google/api/gbase/client/GmPublishingPriority$Value;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 0
    .param p0, "x0"    # Lcom/google/api/gbase/client/GmPublishingPriority;
    .param p1, "x1"    # Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/api/gbase/client/GmPublishingPriority;->value:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    return-object p1
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 100
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 101
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 102
    const-string v1, "publishing_priority"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 104
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v1, "publishing_priority"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/api/gbase/client/GmPublishingPriority;->value:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    invoke-virtual {v3}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->getTextValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 123
    new-instance v0, Lcom/google/api/gbase/client/GmPublishingPriority$1;

    invoke-direct {v0, p0}, Lcom/google/api/gbase/client/GmPublishingPriority$1;-><init>(Lcom/google/api/gbase/client/GmPublishingPriority;)V

    return-object v0
.end method

.method public getValue()Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/api/gbase/client/GmPublishingPriority;->value:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    return-object v0
.end method

.method public setValue(Lcom/google/api/gbase/client/GmPublishingPriority$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/api/gbase/client/GmPublishingPriority;->value:Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .line 113
    return-void
.end method
