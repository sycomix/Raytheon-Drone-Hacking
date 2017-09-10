.class public final Lcom/google/gdata/data/analytics/Destination$MatchType;
.super Ljava/lang/Object;
.source "Destination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/analytics/Destination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MatchType"
.end annotation


# static fields
.field public static final EXACT:Ljava/lang/String; = "exact"

.field public static final HEAD:Ljava/lang/String; = "head"

.field public static final REGEX:Ljava/lang/String; = "regex"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
