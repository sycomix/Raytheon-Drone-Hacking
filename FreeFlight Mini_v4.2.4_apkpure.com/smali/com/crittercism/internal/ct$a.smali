.class public final Lcom/crittercism/internal/ct$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/cz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/lang/String;Landroid/content/Context;Lcom/crittercism/internal/ar;)Lcom/crittercism/internal/cy;
    .locals 6

    .prologue
    .line 41
    .line 1048
    new-instance v0, Lcom/crittercism/internal/ct;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/crittercism/internal/ct;-><init>(Lcom/crittercism/internal/bq;Lcom/crittercism/internal/bq;Ljava/lang/String;Landroid/content/Context;Lcom/crittercism/internal/ar;)V

    .line 41
    return-object v0
.end method
