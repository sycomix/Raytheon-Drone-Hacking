.class final Lcom/crittercism/internal/ax$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/ax$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/crittercism/internal/ax;


# direct methods
.method constructor <init>(Lcom/crittercism/internal/ax;I)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/crittercism/internal/ax$6;->b:Lcom/crittercism/internal/ax;

    iput p2, p0, Lcom/crittercism/internal/ax$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/crittercism/internal/c;)V
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/crittercism/internal/ax$6;->a:I

    invoke-virtual {p1, v0}, Lcom/crittercism/internal/c;->a(I)V

    .line 547
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/crittercism/internal/ax$6;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
