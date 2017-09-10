.class public Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
.super Ljava/lang/Object;
.source "MultiPointFilter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPointFilterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final EQUAL:I = 0x0

.field private static final GREATER:I = 0x1

.field private static final LOWER:I = -0x1

.field private static final pointSeparator:Ljava/lang/String; = ">"
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "in"    # F
    .param p2, "out"    # F

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    .line 156
    iput p2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mY:F

    .line 157
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->fromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->toSaveString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fromString(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .locals 10
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "ret":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    const-string v5, ">"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "xy":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v6, :cond_0

    .line 164
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 165
    .local v0, "in_x":F
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 166
    .local v1, "in_y":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_0

    .line 167
    new-instance v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-direct {v3, v0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "ret":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .local v3, "ret":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    move-object v2, v3

    .line 173
    .end local v0    # "in_x":F
    .end local v1    # "in_y":F
    .end local v3    # "ret":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .restart local v2    # "ret":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_0
    :goto_0
    return-object v2

    .line 169
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private toSaveString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)I
    .locals 2
    .param p1, "point"    # Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v0

    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 217
    const/4 v0, -0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 143
    check-cast p1, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->compareTo(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    instance-of v3, p1, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    if-nez v3, :cond_2

    move v1, v2

    .line 198
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 201
    .local v0, "point":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v3

    iget v4, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mY:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 206
    const/16 v0, 0x11

    .line 207
    .local v0, "result":I
    iget v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mX:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->mY:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 209
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->toSaveString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
