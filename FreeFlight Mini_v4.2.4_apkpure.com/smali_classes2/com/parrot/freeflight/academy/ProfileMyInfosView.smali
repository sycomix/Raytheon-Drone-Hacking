.class public Lcom/parrot/freeflight/academy/ProfileMyInfosView;
.super Landroid/widget/FrameLayout;
.source "ProfileMyInfosView.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;


# instance fields
.field private final mAddress:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mBirthDate:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCity:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mCountry:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mEmail:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFacebook:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFirstName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGeneralInfoSection:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGooglePlus:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLastName:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPhone:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPostalCode:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mPsn:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSteam:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mTwitter:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mWebsite:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mXboxLive:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mYoutube:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const v1, 0x7f040041

    invoke-static {p1, v1, p0}, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v1, 0x7f0f017a

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f017b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mFirstName:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f017c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mLastName:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mBirthDate:Landroid/widget/TextView;

    .line 70
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f017e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPhone:Landroid/widget/TextView;

    .line 71
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f017f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mAddress:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPostalCode:Landroid/widget/TextView;

    .line 73
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mCity:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const v2, 0x7f0f0182

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mCountry:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0f0191

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "webInfoSection":Landroid/view/View;
    const v1, 0x7f0f00b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mEmail:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0f0192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mWebsite:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0f0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mYoutube:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0f0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mFacebook:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0f0195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mTwitter:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0f0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGooglePlus:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0f0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPsn:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0f0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mXboxLive:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0f0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mSteam:Landroid/widget/TextView;

    .line 87
    invoke-static {p1, p0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    return-void
.end method


# virtual methods
.method public updateOtherUserInfos(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "pilot"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGeneralInfoSection:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 133
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;

    move-result-object v0

    .line 135
    .local v0, "pilotDetails":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mWebsite:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mYoutube:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getYoutube()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mFacebook:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getFacebook()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mTwitter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getTwitter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGooglePlus:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getGooglePlus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPsn:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getPsn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mXboxLive:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getXboxLive()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mSteam:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;->getSteam()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "pilotDetails":Lcom/parrot/arsdk/aracademy/ARAcademyPilotDetails;
    :cond_0
    return-void
.end method

.method public updateUserInfos(Lcom/parrot/arsdk/aracademy/ARAcademyProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mFirstName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mLastName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getBirthDate()Ljava/util/Date;

    move-result-object v0

    .line 100
    .local v0, "birthDate":Ljava/util/Date;
    if-eqz v0, :cond_1

    .line 101
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 102
    .local v2, "fullDateFormat":Ljava/text/DateFormat;
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mBirthDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v2    # "fullDateFormat":Ljava/text/DateFormat;
    :cond_1
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPhone:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPhone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mAddress:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getAddress1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPostalCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mCity:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCity()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v1

    .line 110
    .local v1, "country":Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    if-eqz v1, :cond_2

    .line 111
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mCountry:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->getPrintableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v3

    .line 116
    .local v3, "user":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    if-eqz v3, :cond_3

    .line 117
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mEmail:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_3
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mWebsite:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getWebsite()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mYoutube:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getYoutube()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mFacebook:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getFacebook()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mTwitter:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getTwitter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mGooglePlus:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getGooglePlus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mPsn:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getPsn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mXboxLive:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getXboxLive()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileMyInfosView;->mSteam:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getSteam()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
