.class public Lcom/google/gdata/client/calendar/CalendarQuery;
.super Lcom/google/gdata/client/Query;
.source "CalendarQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    }
.end annotation


# static fields
.field private static final EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

.field public static final EXT_PROP_QUERY:Ljava/lang/String; = "extq"

.field public static final MAXIMUM_START_TIME:Ljava/lang/String; = "start-max"

.field public static final MINIMUM_START_TIME:Ljava/lang/String; = "start-min"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    sput-object v0, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 254
    return-void
.end method

.method static synthetic access$000()[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    return-object v0
.end method


# virtual methods
.method public getExtendedPropertyQuery()[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    .locals 2

    .prologue
    .line 371
    const-string v1, "extq"

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/calendar/CalendarQuery;->getStringCustomParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "query":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 373
    sget-object v1, Lcom/google/gdata/client/calendar/CalendarQuery;->EMPTY_EXT_PROP_MATCH:[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    .line 375
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->arrayFromExtendedPropertyQueryString(Ljava/lang/String;)[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaximumStartTime()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 333
    const-string v1, "start-max"

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "maxParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 335
    const/4 v1, 0x0

    .line 337
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v1}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method public getMinimumStartTime()Lcom/google/gdata/data/DateTime;
    .locals 2

    .prologue
    .line 291
    const-string v1, "start-min"

    invoke-virtual {p0, v1}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "minParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 295
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    invoke-virtual {v1}, Lcom/google/gdata/client/Query$CustomParameter;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/data/DateTime;->parseDateTime(Ljava/lang/String;)Lcom/google/gdata/data/DateTime;

    move-result-object v1

    goto :goto_0
.end method

.method public varargs setExtendedPropertyQuery([Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;)V
    .locals 7
    .param p1, "matches"    # [Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;

    .prologue
    .line 351
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 352
    :cond_0
    const-string v5, "extq"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/google/gdata/client/calendar/CalendarQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 355
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v4, "query":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 357
    .local v3, "m":Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    invoke-virtual {v3}, Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v3    # "m":Lcom/google/gdata/client/calendar/CalendarQuery$ExtendedPropertyMatch;
    :cond_2
    const-string v5, "extq"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/google/gdata/client/calendar/CalendarQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMaximumStartTime(Lcom/google/gdata/data/DateTime;)V
    .locals 6
    .param p1, "maxStart"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    .line 313
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    const-string v3, "start-max"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 314
    .local v1, "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v1    # "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_0
    if-eqz p1, :cond_1

    .line 319
    new-instance v3, Lcom/google/gdata/client/Query$CustomParameter;

    const-string v4, "start-max"

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    return-void
.end method

.method public setMinimumStartTime(Lcom/google/gdata/data/DateTime;)V
    .locals 6
    .param p1, "minStart"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters()Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "customParams":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/client/Query$CustomParameter;>;"
    const-string v3, "start-min"

    invoke-virtual {p0, v3}, Lcom/google/gdata/client/calendar/CalendarQuery;->getCustomParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/client/Query$CustomParameter;

    .line 272
    .local v1, "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v1    # "existingValue":Lcom/google/gdata/client/Query$CustomParameter;
    :cond_0
    if-eqz p1, :cond_1

    .line 277
    new-instance v3, Lcom/google/gdata/client/Query$CustomParameter;

    const-string v4, "start-min"

    invoke-virtual {p1}, Lcom/google/gdata/data/DateTime;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/client/Query$CustomParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    return-void
.end method
