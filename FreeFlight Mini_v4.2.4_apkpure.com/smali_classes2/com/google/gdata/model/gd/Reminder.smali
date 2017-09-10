.class public Lcom/google/gdata/model/gd/Reminder;
.super Lcom/google/gdata/model/Element;
.source "Reminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/gd/Reminder$Method;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final DAYS:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOURS:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MINUTES:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "reminder"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/Reminder;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 80
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "absoluteTime"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/DateTime;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;

    .line 86
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "days"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->DAYS:Lcom/google/gdata/model/AttributeKey;

    .line 92
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "hours"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->HOURS:Lcom/google/gdata/model/AttributeKey;

    .line 98
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "method"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->METHOD:Lcom/google/gdata/model/AttributeKey;

    .line 104
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "minutes"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/Reminder;->MINUTES:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Reminder;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 138
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/Reminder;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/Reminder;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 152
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 111
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 116
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 119
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 120
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->DAYS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 121
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->HOURS:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 122
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->METHOD:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 123
    sget-object v1, Lcom/google/gdata/model/gd/Reminder;->MINUTES:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    if-ne p0, p1, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 310
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/Reminder;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 311
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 313
    check-cast v0, Lcom/google/gdata/model/gd/Reminder;

    .line 314
    .local v0, "other":Lcom/google/gdata/model/gd/Reminder;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getAbsoluteTime()Lcom/google/gdata/data/DateTime;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Reminder;->getAbsoluteTime()Lcom/google/gdata/data/DateTime;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Reminder;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getDays()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Reminder;->getDays()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Reminder;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getHours()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Reminder;->getHours()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Reminder;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Reminder;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Reminder;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/Reminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/Reminder;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAbsoluteTime()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getDays()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->DAYS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getHours()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->HOURS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->METHOD:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMinutes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->MINUTES:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public hasAbsoluteTime()Z
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasDays()Z
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->DAYS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasHours()Z
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->HOURS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasMethod()Z
    .locals 1

    .prologue
    .line 272
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->METHOD:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasMinutes()Z
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->MINUTES:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 324
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getAbsoluteTime()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getAbsoluteTime()Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getDays()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getDays()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getHours()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 331
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getHours()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 334
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 337
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->getMinutes()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 339
    :cond_4
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/Reminder;->lock()Lcom/google/gdata/model/gd/Reminder;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/Reminder;
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Reminder;

    return-object v0
.end method

.method public setAbsoluteTime(Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/model/gd/Reminder;
    .locals 1
    .param p1, "absoluteTime"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 175
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->ABSOLUTE_TIME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 176
    return-object p0
.end method

.method public setDays(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Reminder;
    .locals 1
    .param p1, "days"    # Ljava/lang/Integer;

    .prologue
    .line 204
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->DAYS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 205
    return-object p0
.end method

.method public setHours(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Reminder;
    .locals 1
    .param p1, "hours"    # Ljava/lang/Integer;

    .prologue
    .line 233
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->HOURS:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 234
    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/gdata/model/gd/Reminder;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 262
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->METHOD:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 263
    return-object p0
.end method

.method public setMinutes(Ljava/lang/Integer;)Lcom/google/gdata/model/gd/Reminder;
    .locals 1
    .param p1, "minutes"    # Ljava/lang/Integer;

    .prologue
    .line 292
    sget-object v0, Lcom/google/gdata/model/gd/Reminder;->MINUTES:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 293
    return-object p0
.end method
