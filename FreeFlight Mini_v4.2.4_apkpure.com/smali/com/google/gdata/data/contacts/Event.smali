.class public Lcom/google/gdata/data/contacts/Event;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Event.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "event"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/Event$Rel;
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final REL:Ljava/lang/String; = "rel"

.field static final XML_NAME:Ljava/lang/String; = "event"


# instance fields
.field private label:Ljava/lang/String;

.field private rel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Event;->setLabel(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/Event;->setRel(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Event;->setImmutable(Z)V

    .line 83
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 197
    const-class v1, Lcom/google/gdata/data/contacts/Event;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 199
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 200
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 201
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 213
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    .line 214
    const-string v0, "rel"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v5, 0x0

    .line 87
    const-class v0, Lcom/google/gdata/data/contacts/Event;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    const-class v7, Lcom/google/gdata/data/contacts/Event;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/When;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v4, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "when"

    const/4 v4, 0x1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 93
    new-instance v0, Lcom/google/gdata/data/extensions/When;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/When;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/When;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()Lcom/google/gdata/data/extensions/When;
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/google/gdata/data/extensions/When;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Event;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/When;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Event;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Event;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWhen()Z
    .locals 1

    .prologue
    .line 180
    const-class v0, Lcom/google/gdata/data/extensions/When;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Event;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 206
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Event;->throwExceptionIfImmutable()V

    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/Event;->throwExceptionIfImmutable()V

    .line 140
    iput-object p1, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setWhen(Lcom/google/gdata/data/extensions/When;)V
    .locals 1
    .param p1, "when"    # Lcom/google/gdata/data/extensions/When;

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const-class v0, Lcom/google/gdata/data/extensions/When;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/Event;->removeExtension(Ljava/lang/Class;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/Event;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Event label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Event;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/Event;->rel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
