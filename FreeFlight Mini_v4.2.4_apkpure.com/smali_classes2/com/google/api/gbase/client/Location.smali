.class public Lcom/google/api/gbase/client/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field private address:Ljava/lang/String;

.field private hasCoordinates:Z

.field private latitude:F

.field private longitude:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/Location;->setAddress(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "latitude"    # F
    .param p3, "longitude"    # F

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/Location;->setAddress(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/google/api/gbase/client/Location;->setLatitude(F)V

    .line 49
    invoke-virtual {p0, p3}, Lcom/google/api/gbase/client/Location;->setLongitude(F)V

    .line 50
    return-void
.end method

.method private assertHasCoordinates()V
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No coordinates have been defined. (Check with hasCoordinates() first)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCoordinates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    .line 66
    iput v1, p0, Lcom/google/api/gbase/client/Location;->latitude:F

    .line 67
    iput v1, p0, Lcom/google/api/gbase/client/Location;->longitude:F

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 146
    const/4 v1, 0x1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    instance-of v2, p1, Lcom/google/api/gbase/client/Location;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/google/api/gbase/client/Location;

    .line 154
    .local v0, "location":Lcom/google/api/gbase/client/Location;
    iget-boolean v2, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    iget-boolean v3, v0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    if-ne v2, v3, :cond_0

    .line 157
    iget-boolean v2, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    if-eqz v2, :cond_2

    .line 158
    iget v2, v0, Lcom/google/api/gbase/client/Location;->latitude:F

    iget v3, p0, Lcom/google/api/gbase/client/Location;->latitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget v2, v0, Lcom/google/api/gbase/client/Location;->longitude:F

    iget v3, p0, Lcom/google/api/gbase/client/Location;->longitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/google/api/gbase/client/Location;->address:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/api/gbase/client/Location;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/api/gbase/client/Location;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()F
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/api/gbase/client/Location;->assertHasCoordinates()V

    .line 79
    iget v0, p0, Lcom/google/api/gbase/client/Location;->latitude:F

    return v0
.end method

.method public getLongitude()F
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/google/api/gbase/client/Location;->assertHasCoordinates()V

    .line 91
    iget v0, p0, Lcom/google/api/gbase/client/Location;->longitude:F

    return v0
.end method

.method public hasCoordinates()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/api/gbase/client/Location;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 170
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    if-eqz v1, :cond_0

    .line 171
    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Lcom/google/api/gbase/client/Location;->latitude:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 172
    mul-int/lit8 v1, v0, 0x1d

    iget v2, p0, Lcom/google/api/gbase/client/Location;->longitude:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 174
    :cond_0
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "address cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/google/api/gbase/client/Location;->address:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setLatitude(F)V
    .locals 1
    .param p1, "latitude"    # F

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    .line 118
    iput p1, p0, Lcom/google/api/gbase/client/Location;->latitude:F

    .line 119
    return-void
.end method

.method public setLongitude(F)V
    .locals 1
    .param p1, "longitude"    # F

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/gbase/client/Location;->hasCoordinates:Z

    .line 108
    iput p1, p0, Lcom/google/api/gbase/client/Location;->longitude:F

    .line 109
    return-void
.end method
