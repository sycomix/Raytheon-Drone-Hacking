.class public final Lcom/google/gdata/data/analytics/CustomVariable$Scope;
.super Ljava/lang/Object;
.source "CustomVariable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/analytics/CustomVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scope"
.end annotation


# static fields
.field public static final HIT:Ljava/lang/String; = "hit"

.field public static final VISIT:Ljava/lang/String; = "visit"

.field public static final VISITOR:Ljava/lang/String; = "visitor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
