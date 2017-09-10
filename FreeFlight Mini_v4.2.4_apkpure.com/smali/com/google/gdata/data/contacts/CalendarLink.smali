.class public Lcom/google/gdata/data/contacts/CalendarLink;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "CalendarLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "calendarLink"
    nsAlias = "gContact"
    nsUri = "http://schemas.google.com/contact/2008"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/contacts/CalendarLink$Rel;
    }
.end annotation


# static fields
.field private static final HREF:Ljava/lang/String; = "href"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final PRIMARY:Ljava/lang/String; = "primary"

.field private static final REL:Ljava/lang/String; = "rel"

.field private static final REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue",
            "<",
            "Lcom/google/gdata/data/contacts/CalendarLink$Rel;",
            ">;"
        }
    .end annotation
.end field

.field static final XML_NAME:Ljava/lang/String; = "calendarLink"


# instance fields
.field private href:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private primary:Ljava/lang/Boolean;

.field private rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/gdata/data/contacts/CalendarLink$1;

    invoke-direct {v0}, Lcom/google/gdata/data/contacts/CalendarLink$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/contacts/CalendarLink;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/gdata/data/contacts/CalendarLink$Rel;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "primary"    # Ljava/lang/Boolean;
    .param p4, "rel"    # Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    .line 69
    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/CalendarLink;->setHref(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/contacts/CalendarLink;->setLabel(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/contacts/CalendarLink;->setPrimary(Ljava/lang/Boolean;)V

    .line 120
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/contacts/CalendarLink;->setRel(Lcom/google/gdata/data/contacts/CalendarLink$Rel;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/contacts/CalendarLink;->setImmutable(Z)V

    .line 122
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 253
    const-class v1, Lcom/google/gdata/data/contacts/CalendarLink;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 255
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 256
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 257
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 6
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    const-string v0, "href"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    .line 272
    const-string v0, "label"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    .line 273
    const-string v0, "primary"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    .line 274
    const-string v1, "rel"

    const-class v3, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/gdata/data/contacts/CalendarLink;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    iput-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 276
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    if-ne p0, p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 283
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/contacts/CalendarLink;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 284
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 286
    check-cast v0, Lcom/google/gdata/data/contacts/CalendarLink;

    .line 287
    .local v0, "other":Lcom/google/gdata/data/contacts/CalendarLink;
    iget-object v3, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/CalendarLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/CalendarLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/CalendarLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    iget-object v4, v0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    invoke-static {v3, v4}, Lcom/google/gdata/data/contacts/CalendarLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Lcom/google/gdata/data/contacts/CalendarLink$Rel;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    return-object v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->getHref()Ljava/lang/String;

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
    .line 177
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->getLabel()Ljava/lang/String;

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
    .line 205
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->getPrimary()Ljava/lang/Boolean;

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
    .line 233
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->getRel()Lcom/google/gdata/data/contacts/CalendarLink$Rel;

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
    .line 295
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 296
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 297
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 300
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 303
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    if-eqz v1, :cond_3

    .line 306
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    invoke-virtual {v2}, Lcom/google/gdata/data/contacts/CalendarLink$Rel;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 308
    :cond_3
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 262
    const-string v0, "href"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "label"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "primary"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    const-string v0, "rel"

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    sget-object v2, Lcom/google/gdata/data/contacts/CalendarLink;->REL_ENUM_TO_ATTRIBUTE_VALUE:Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 266
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->throwExceptionIfImmutable()V

    .line 140
    iput-object p1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->throwExceptionIfImmutable()V

    .line 168
    iput-object p1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setPrimary(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->throwExceptionIfImmutable()V

    .line 196
    iput-object p1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    .line 197
    return-void
.end method

.method public setRel(Lcom/google/gdata/data/contacts/CalendarLink$Rel;)V
    .locals 0
    .param p1, "rel"    # Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/gdata/data/contacts/CalendarLink;->throwExceptionIfImmutable()V

    .line 224
    iput-object p1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    .line 225
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CalendarLink href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->primary:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/contacts/CalendarLink;->rel:Lcom/google/gdata/data/contacts/CalendarLink$Rel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 238
    iget-object v0, p0, Lcom/google/gdata/data/contacts/CalendarLink;->href:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "href"

    invoke-static {v0}, Lcom/google/gdata/data/contacts/CalendarLink;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method
