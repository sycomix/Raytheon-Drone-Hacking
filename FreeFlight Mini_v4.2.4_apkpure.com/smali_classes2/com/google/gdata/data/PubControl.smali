.class public Lcom/google/gdata/data/PubControl;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "PubControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/PubControl$1;,
        Lcom/google/gdata/data/PubControl$DraftHandler;,
        Lcom/google/gdata/data/PubControl$AtomHandler;
    }
.end annotation


# instance fields
.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field private draft:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/PubControl;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/PubControl;)Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/PubControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gdata/data/PubControl;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/gdata/data/PubControl;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/PubControl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gdata/data/PubControl;->draft:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/gdata/data/PubControl;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/data/PubControl;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/gdata/data/PubControl;->draft:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    const-string v1, "control"

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/gdata/data/PubControl;->isDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    const-string v1, "draft"

    const-string v2, "yes"

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/PubControl;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 77
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement()V

    .line 78
    return-void
.end method

.method public isDraft()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/data/PubControl;->draft:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/PubControl;->draft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDraft(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "draft"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/gdata/data/PubControl;->draft:Ljava/lang/Boolean;

    .line 67
    return-void
.end method
