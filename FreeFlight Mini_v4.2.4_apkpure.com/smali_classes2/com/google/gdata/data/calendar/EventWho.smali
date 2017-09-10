.class public Lcom/google/gdata/data/calendar/EventWho;
.super Lcom/google/gdata/data/extensions/Who;
.source "EventWho.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/calendar/EventWho$Handler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/extensions/Who;-><init>()V

    .line 79
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/gdata/data/calendar/EventWho;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "repeatable"    # Z

    .prologue
    .line 60
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 61
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/calendar/EventWho;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 62
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 63
    const-string v1, "who"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 74
    new-instance v0, Lcom/google/gdata/data/calendar/EventWho$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/calendar/EventWho$Handler;-><init>(Lcom/google/gdata/data/calendar/EventWho;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getResource()Lcom/google/gdata/data/calendar/ResourceProperty;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/calendar/EventWho;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    return-object v0
.end method

.method public setResource(Lcom/google/gdata/data/calendar/ResourceProperty;)V
    .locals 0
    .param p1, "resource"    # Lcom/google/gdata/data/calendar/ResourceProperty;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/calendar/EventWho;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 48
    return-void
.end method
