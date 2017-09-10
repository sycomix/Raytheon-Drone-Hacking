.class Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePagerAdapter"
.end annotation


# static fields
.field private static final POSITION_ABOUT:I = 0x0

.field private static final POSITION_MY_INFOS:I = 0x1


# instance fields
.field private final mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

.field final synthetic this$0:Lcom/parrot/freeflight/academy/ProfileActivity;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 1

    .prologue
    .line 207
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$400(Lcom/parrot/freeflight/academy/ProfileActivity;)I

    move-result v0

    new-array v0, v0, [Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/academy/ProfileActivity;Lcom/parrot/freeflight/academy/ProfileActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p2, "x1"    # Lcom/parrot/freeflight/academy/ProfileActivity$1;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    .line 253
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$400(Lcom/parrot/freeflight/academy/ProfileActivity;)I

    move-result v0

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 264
    const-string v0, ""

    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08049f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 225
    packed-switch p2, :pswitch_data_0

    .line 241
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$900(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateUserInfos(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 246
    :goto_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v1, v1, p2

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v1, v1, p2

    return-object v1

    .line 227
    :pswitch_0
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileAboutView;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, "aboutView":Lcom/parrot/freeflight/academy/ProfileAboutView;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$600(Lcom/parrot/freeflight/academy/ProfileActivity;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 230
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$800(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updatePilotInfos(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aput-object v0, v1, p2

    goto :goto_0

    .line 235
    .end local v0    # "aboutView":Lcom/parrot/freeflight/academy/ProfileAboutView;
    :pswitch_1
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkProfilMyInfos()V

    .line 236
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    new-instance v2, Lcom/parrot/freeflight/academy/ProfileMyInfosView;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/academy/ProfileMyInfosView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, p2

    goto :goto_0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateOtherUserInfos(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    goto :goto_1

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 220
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateOtherUserInfos()V
    .locals 6

    .prologue
    .line 277
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 278
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    if-eqz v0, :cond_0

    .line 279
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$1000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateOtherUserInfos(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    :cond_1
    return-void
.end method

.method public updateUserInfos()V
    .locals 5

    .prologue
    .line 269
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->mItems:[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 270
    .local v0, "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    if-eqz v0, :cond_0

    .line 271
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->this$0:Lcom/parrot/freeflight/academy/ProfileActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/academy/ProfileActivity;->access$900(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;->updateUserInfos(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "view":Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;
    :cond_1
    return-void
.end method
