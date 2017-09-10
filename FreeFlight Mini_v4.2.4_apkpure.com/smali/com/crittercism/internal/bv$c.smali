.class public final Lcom/crittercism/internal/bv$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/crittercism/internal/bv;->a()Lcom/crittercism/internal/aq;

    move-result-object v0

    .line 1040
    iget-object v0, v0, Lcom/crittercism/internal/aq;->a:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "app_version"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    .line 1094
    iget-object v0, p0, Lcom/crittercism/internal/bv$c;->a:Ljava/lang/String;

    .line 81
    return-object v0
.end method
