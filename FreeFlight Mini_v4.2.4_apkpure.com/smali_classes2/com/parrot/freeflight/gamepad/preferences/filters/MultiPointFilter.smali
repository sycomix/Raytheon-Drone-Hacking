.class public Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;
.super Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;
.source "MultiPointFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    }
.end annotation


# static fields
.field private static final first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static final last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final mPoints:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 13
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-direct {v0, v1, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;-><init>(FF)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 15
    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-direct {v0, v2, v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;-><init>(FF)V

    sput-object v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;-><init>(I)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    .line 42
    sget-object v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/AxisFilter;-><init>(I)V

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    .line 23
    sget-object v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    .line 24
    sget-object v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    .line 26
    const-string v3, ";"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "src":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 28
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->access$000(Ljava/lang/String;)Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    move-result-object v1

    .line 29
    .local v1, "point":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    if-nez v1, :cond_1

    .line 36
    .end local v1    # "point":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_0
    return-void

    .line 32
    .restart local v1    # "point":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static generateSaveString([Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 9
    .param p0, "points"    # [Landroid/graphics/PointF;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ARMF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    if-eqz p0, :cond_4

    array-length v2, p0

    if-lez v2, :cond_4

    .line 51
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v0, p0, v2

    .line 52
    .local v0, "p":Landroid/graphics/PointF;
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_2

    :cond_0
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_2

    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_3
    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 56
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    .end local v0    # "p":Landroid/graphics/PointF;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addPoint(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Z
    .locals 5
    .param p1, "point"    # Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .prologue
    .line 69
    const/4 v1, 0x1

    .line 70
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 75
    .local v0, "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 76
    const/4 v1, 0x0

    .line 91
    .end local v0    # "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 92
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 95
    :cond_2
    return v1

    .line 79
    .restart local v0    # "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_3
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 80
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 81
    const/4 v1, 0x0

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_0
.end method

.method public apply(F)F
    .locals 11
    .param p1, "initialValue"    # F

    .prologue
    .line 118
    sget-object v4, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .local v4, "prev":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    sget-object v2, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 120
    .local v2, "next":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    iget-object v9, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 121
    .local v3, "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v8

    .line 122
    .local v8, "x":F
    cmpg-float v10, v8, p1

    if-gtz v10, :cond_1

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v10

    cmpl-float v10, v8, v10

    if-lez v10, :cond_1

    .line 123
    move-object v4, v3

    .line 125
    :cond_1
    cmpl-float v10, v8, p1

    if-ltz v10, :cond_0

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_0

    .line 126
    move-object v2, v3

    goto :goto_0

    .line 129
    .end local v3    # "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    .end local v8    # "x":F
    :cond_2
    invoke-virtual {v4, v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 130
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v7

    .line 140
    .local v7, "ret":F
    :goto_1
    return v7

    .line 133
    .end local v7    # "ret":F
    :cond_3
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v9

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v10

    sub-float v6, v9, v10

    .line 134
    .local v6, "rangeY":F
    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v9

    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v10

    sub-float v5, v9, v10

    .line 135
    .local v5, "rangeX":F
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getY()F

    move-result v1

    .line 136
    .local v1, "floor":F
    invoke-virtual {v4}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->getX()F

    move-result v9

    sub-float v0, p1, v9

    .line 137
    .local v0, "diffX":F
    div-float v9, v0, v5

    mul-float/2addr v9, v6

    add-float v7, v1, v9

    .restart local v7    # "ret":F
    goto :goto_1
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toSaveString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ARMF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->mPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    .line 105
    .local v0, "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    sget-object v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->first:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter;->last:Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;->access$100(Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    .end local v0    # "p":Lcom/parrot/freeflight/gamepad/preferences/filters/MultiPointFilter$MultiPointFilterComparator;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
