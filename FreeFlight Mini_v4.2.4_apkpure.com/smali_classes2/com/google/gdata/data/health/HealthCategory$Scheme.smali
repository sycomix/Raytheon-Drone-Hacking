.class public final Lcom/google/gdata/data/health/HealthCategory$Scheme;
.super Ljava/lang/Object;
.source "HealthCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/health/HealthCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scheme"
.end annotation


# static fields
.field public static final CCR_SCHEME:Ljava/lang/String; = "http://schemas.google.com/health/ccr"

.field public static final ITEM_SCHEME:Ljava/lang/String; = "http://schemas.google.com/health/item"

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#kind"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
