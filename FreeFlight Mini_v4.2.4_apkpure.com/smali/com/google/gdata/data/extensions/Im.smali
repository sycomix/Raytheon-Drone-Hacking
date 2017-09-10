.class public Lcom/google/gdata/data/extensions/Im;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Im.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "im"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Im$Rel;,
        Lcom/google/gdata/data/extensions/Im$Protocol;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final REL:Ljava/lang/String; = "rel"

.field static final XML_NAME:Ljava/lang/String; = "im"


# instance fields
.field private address:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private protocol:Ljava/lang/String;

.field private rel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "primary"    # Ljava/lang/Boolean;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "rel"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    .line 65
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Im;->setAddress(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/extensions/Im;->setLabel(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/Im;->setPrimary(Ljava/lang/Boolean;)V

    .line 138
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/extensions/Im;->setProtocol(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, p5}, Lcom/google/gdata/data/extensions/Im;->setRel(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/extensions/Im;->setImmutable(Z)V

    .line 141
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 303
    const-class v1, Lcom/google/gdata/data/extensions/Im;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 305
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 306
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 307
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 322
    const-string v0, "address"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    .line 323
    const-string v0, "label"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    .line 324
    const-string v0, "primary"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    .line 325
    const-string v0, "protocol"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    .line 326
    const-string v0, "rel"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    if-ne p0, p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v1

    .line 334
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/extensions/Im;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 335
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 337
    check-cast v0, Lcom/google/gdata/data/extensions/Im;

    .line 338
    .local v0, "other":Lcom/google/gdata/data/extensions/Im;
    iget-object v3, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/extensions/Im;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->getPrimary()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProtocol()Z
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->getProtocol()Ljava/lang/String;

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
    .line 283
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->getRel()Ljava/lang/String;

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
    .line 347
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 348
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 349
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 352
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 355
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 357
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 358
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 361
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 363
    :cond_4
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 312
    const-string v0, "address"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "primary"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionIfImmutable()V

    .line 159
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionIfImmutable()V

    .line 187
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionIfImmutable()V

    .line 216
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    .line 217
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionIfImmutable()V

    .line 246
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionIfImmutable()V

    .line 274
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Im address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Im;->rel:Ljava/lang/String;

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
    .line 288
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Im;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 289
    const-string v0, "address"

    invoke-static {v0}, Lcom/google/gdata/data/extensions/Im;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method
