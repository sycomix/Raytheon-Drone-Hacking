.class public Lcom/google/api/gbase/client/DateTimeRange;
.super Ljava/lang/Object;
.source "DateTimeRange.java"


# instance fields
.field private final end:Lcom/google/gdata/data/DateTime;

.field private final start:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "dateTime"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 65
    invoke-direct {p0, p1, p1}, Lcom/google/api/gbase/client/DateTimeRange;-><init>(Lcom/google/gdata/data/DateTime;Lcom/google/gdata/data/DateTime;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/DateTime;Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "start"    # Lcom/google/gdata/data/DateTime;
    .param p2, "end"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "start"

    invoke-direct {p0, p1, v0}, Lcom/google/api/gbase/client/DateTimeRange;->assertArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "end"

    invoke-direct {p0, p2, v0}, Lcom/google/api/gbase/client/DateTimeRange;->assertArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    .line 52
    iput-object p2, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    .line 53
    return-void
.end method

.method private assertArgumentNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 138
    instance-of v2, p1, Lcom/google/api/gbase/client/DateTimeRange;

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 141
    check-cast v0, Lcom/google/api/gbase/client/DateTimeRange;

    .line 142
    .local v0, "other":Lcom/google/api/gbase/client/DateTimeRange;
    iget-object v2, v0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    iget-object v3, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    iget-object v3, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2, v3}, Lcom/google/gdata/data/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEnd()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public getStart()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isDateTimeOnly()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    iget-object v1, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/DateTime;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toDateTime()Lcom/google/gdata/data/DateTime;
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/api/gbase/client/DateTimeRange;->isDateTimeOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is a valid range, with distinct start and end date. It cannot be converted to one DateTime value. (Check with isDateTimeOnly() first): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/gbase/client/DateTimeRange;->start:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/DateTimeRange;->end:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
