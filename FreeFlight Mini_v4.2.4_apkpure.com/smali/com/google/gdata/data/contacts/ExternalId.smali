.class public Lcom/google/gdata/data/contacts/ExternalId;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "ExternalId.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "externalId"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/ExternalId$Rel;
    }
.end annotation


# static fields
.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final REL:Ljava/lang/String; = "rel"

.field private static final VALUE:Ljava/lang/String; = "value"

.field static final XML_NAME:Ljava/lang/String; = "externalId"


# instance fields
.field private label:Ljava/lang/String;

.field private rel:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "rel"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ExternalId;->setLabel(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/ExternalId;->setRel(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/contacts/ExternalId;->setValue(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/ExternalId;->setImmutable(Z)V

    .line 94
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 197
    const-class v1, Lcom/google/gdata/data/contacts/ExternalId;

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

    .line 214
    const-string v0, "label"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    .line 215
    const-string v0, "rel"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    .line 216
    const-string/jumbo v0, "value"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-ne p0, p1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/ExternalId;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 225
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 227
    check-cast v0, Lcom/google/gdata/data/contacts/ExternalId;

    .line 228
    .local v0, "other":Lcom/google/gdata/data/contacts/ExternalId;
    iget-object v3, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/ExternalId;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/ExternalId;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/ExternalId;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->getLabel()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 236
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 237
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 240
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 243
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 245
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 206
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "value"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->throwExceptionIfImmutable()V

    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->throwExceptionIfImmutable()V

    .line 140
    iput-object p1, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/ExternalId;->throwExceptionIfImmutable()V

    .line 168
    iput-object p1, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ExternalId label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->rel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/gdata/data/contacts/ExternalId;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    const-string/jumbo v0, "value"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/ExternalId;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method
