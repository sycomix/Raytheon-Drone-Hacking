.class Lcom/parrot/freeflight/academy/ProfileActivity$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$1;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$1;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->updateUserInfos()V

    .line 78
    return-void
.end method
