.class public Lcom/android/settings/DataUsageSummary;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings/DataUsageSummary$AppItem;,
        Lcom/android/settings/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppPieChart:Lcom/android/settings/widget/PieChartView;

.field private mAppRestrict:Landroid/widget/CheckBox;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSettingsListener:Landroid/view/View$OnClickListener;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDataEnabledView:Landroid/view/View;

.field private mDisableAtLimit:Landroid/widget/CheckBox;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitView:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mMenuAutoSync:Landroid/view/MenuItem;

.field private mMenuDataRoaming:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

.field private mUsageSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1355
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 207
    iput v0, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 238
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 239
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 244
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 250
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 251
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 658
    new-instance v0, Lcom/android/settings/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$2;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 673
    new-instance v0, Lcom/android/settings/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$3;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1030
    new-instance v0, Lcom/android/settings/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$4;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1051
    new-instance v0, Lcom/android/settings/DataUsageSummary$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$5;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1065
    new-instance v0, Lcom/android/settings/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$6;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1081
    new-instance v0, Lcom/android/settings/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$7;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    .line 1091
    new-instance v0, Lcom/android/settings/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$8;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1105
    new-instance v0, Lcom/android/settings/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$9;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1204
    new-instance v0, Lcom/android/settings/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$10;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1235
    new-instance v0, Lcom/android/settings/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$11;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1288
    new-instance v0, Lcom/android/settings/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings/DataUsageSummary$12;-><init>(Lcom/android/settings/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2146
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/UidDetailProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/ChartData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/net/ChartData;)Lcom/android/settings/net/ChartData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$AppItem;)Lcom/android/settings/DataUsageSummary$AppItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DataUsageSummary;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/DataUsageSummary;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/DataUsageSummary;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 605
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 609
    .local v0, transition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 610
    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2125
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2126
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2138
    :goto_0
    return-object v0

    .line 2128
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2138
    goto :goto_0

    .line 2130
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2132
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2134
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2136
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 595
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 598
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 599
    .local v0, chartTransition:Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 600
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 601
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    .line 1361
    sget-object v8, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1362
    :try_start_0
    sget-object v0, Lcom/android/settings/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1363
    sget-object v1, Lcom/android/settings/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1365
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1283
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1284
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1285
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 906
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 907
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 908
    .local v1, uidPolicy:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDataRoaming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 889
    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2222
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2210
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2211
    .local v0, conn:Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2214
    .local v1, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 2245
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2246
    .local v0, conn:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2291
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2293
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2294
    return-object v0
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 2282
    const v0, 0x7f040058

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2283
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2285
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2286
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .parameter "view"
    .parameter "insetSide"

    .prologue
    .line 2360
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2361
    .local v1, selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2365
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2366
    .local v2, stub:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2367
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2369
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2370
    new-instance v3, Lcom/android/settings/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2371
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 883
    :goto_0
    return v0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 862
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isMobilePolicySplit()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1265
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1266
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1267
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->isMobilePolicySplit(Ljava/lang/String;)Z

    move-result v2

    .line 1269
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .parameter "policy"

    .prologue
    .line 874
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .parameter "restrictBackground"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 914
    .local v0, uid:I
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 916
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 917
    return-void

    .line 914
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .parameter

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 896
    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 897
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 898
    return-void

    .line 896
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 869
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 871
    return-void
.end method

.method private setMobilePolicySplit(Z)V
    .locals 4
    .parameter "split"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1275
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1276
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1277
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1278
    .local v1, tele:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/settings/net/NetworkPolicyEditor;->setMobilePolicySplit(Ljava/lang/String;Z)V

    .line 1280
    .end local v1           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method

.method private setPolicyLimitBytes(J)V
    .locals 2
    .parameter "limitBytes"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 848
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 849
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 2
    .parameter "warningBytes"

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/DataUsageSummary;->updatePolicy(Z)V

    .line 843
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2387
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2389
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2390
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2378
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2379
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2380
    return-void
.end method

.method private updateAppDetail()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 767
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 770
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 772
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 783
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v2, v13}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 786
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v6, v2, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    .line 787
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v2, v6, v0}, Lcom/android/settings/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings/net/UidDetail;

    move-result-object v2

    .line 788
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/android/settings/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 791
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    .line 792
    iget-object v7, v2, Lcom/android/settings/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    array-length v8, v7

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_2

    aget-object v9, v7, v2

    .line 793
    iget-object v10, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    invoke-static {v5, v11, v9}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 792
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 775
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 778
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v13}, Lcom/android/settings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 837
    :goto_1
    return-void

    .line 796
    :cond_1
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    iget-object v2, v2, Lcom/android/settings/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v5, v8, v2}, Lcom/android/settings/DataUsageSummary;->inflateAppTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 800
    :cond_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 801
    if-eqz v5, :cond_4

    array-length v2, v5

    if-lez v2, :cond_4

    .line 802
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 803
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    array-length v7, v5

    move v2, v1

    :goto_2
    if-ge v2, v7, :cond_6

    aget-object v8, v5, v2

    .line 808
    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    iget-object v8, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v4, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 815
    :goto_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 823
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    .line 825
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 827
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b06ee

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 828
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    const v2, 0x7f0b06ef

    invoke-virtual {p0, v2}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 832
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 807
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 819
    :cond_4
    iput-object v13, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 820
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 835
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private updateBody()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 687
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 755
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 691
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 692
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    if-nez v5, :cond_1

    .line 694
    :goto_1
    if-nez v4, :cond_2

    .line 695
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 692
    goto :goto_1

    .line 699
    :cond_2
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 702
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 703
    :cond_3
    iput-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 707
    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 710
    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 712
    const-string v0, "mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b06ea

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 714
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b06df

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 715
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 748
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-static {v3, v4}, Lcom/android/settings/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 754
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    goto :goto_0

    :cond_4
    move v0, v2

    .line 707
    goto :goto_2

    .line 717
    :cond_5
    const-string v0, "3g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 718
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b06eb

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b06e1

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 721
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_3

    .line 723
    :cond_6
    const-string v0, "4g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 724
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v2, 0x7f0b06ec

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 725
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v2, 0x7f0b06e0

    invoke-static {v0, v2}, Lcom/android/settings/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 727
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_3

    .line 729
    :cond_7
    const-string v0, "wifi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 731
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_3

    .line 735
    :cond_8
    const-string v0, "ethernet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 737
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 739
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_3

    .line 742
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 14
    .parameter

    .prologue
    const-wide v9, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000

    const/4 v11, 0x0

    .line 964
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 965
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->clear()V

    .line 967
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 971
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_8

    .line 972
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 973
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 976
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 977
    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move-wide v9, v12

    .line 978
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v7, v12, v2

    .line 981
    :goto_2
    if-eqz p1, :cond_5

    .line 983
    invoke-static {v7, v8, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v11

    .line 986
    :goto_3
    cmp-long v2, v4, v9

    if-lez v2, :cond_0

    .line 987
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 988
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 992
    const/4 v0, 0x1

    move-wide v4, v2

    .line 993
    goto :goto_3

    .line 996
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {p0, p1}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 999
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v7

    .line 1002
    :goto_5
    cmp-long v0, v4, v9

    if-lez v0, :cond_1

    .line 1003
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1004
    iget-object v7, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v7, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1006
    goto :goto_5

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v11}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1012
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1013
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v6}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    .line 1014
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1019
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1028
    :goto_6
    return-void

    .line 1023
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    .line 1026
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateDetailData()V

    goto :goto_6

    :cond_5
    move v0, v11

    goto :goto_4

    :cond_6
    move-wide v7, v2

    goto/16 :goto_2

    :cond_7
    move-wide v9, v7

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v7, v9

    goto/16 :goto_0
.end method

.method private updateDetailData()V
    .locals 15

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v1

    .line 1147
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v3

    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 1152
    const/4 v7, 0x0

    .line 1153
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1156
    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1157
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1158
    iget-wide v11, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v13, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v11, v13

    .line 1160
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const/16 v7, 0xaf

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/PieChartView;->setOriginAngle(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->removeAllSlices()V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#d88d3a"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v11, v12, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    const-string v7, "#666666"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v9, v10, v7}, Lcom/android/settings/widget/PieChartView;->addSlice(JI)V

    .line 1166
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    invoke-virtual {v0}, Lcom/android/settings/widget/PieChartView;->generatePath()V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    invoke-static {v8, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1174
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1186
    :goto_0
    if-eqz v7, :cond_3

    iget-wide v5, v7, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v7, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v5, v9

    .line 1187
    :goto_1
    invoke-static {v8, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 1188
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/settings/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 1191
    const-string v0, "mobile"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3g"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "4g"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mCurrentApp:Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1193
    :cond_0
    const v0, 0x7f0b0708

    .line 1198
    :goto_2
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/DataUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1202
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    if-eqz v0, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChartData:Lcom/android/settings/net/ChartData;

    iget-object v0, v0, Lcom/android/settings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v7

    .line 1182
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v5, v6, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1186
    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_1

    .line 1195
    :cond_4
    const v0, 0x7f0b0707

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 8
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 924
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 925
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 931
    :goto_0
    const-string v2, "mobile"

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    iput-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 933
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 934
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary;->mBinding:Z

    .line 937
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 938
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 939
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 940
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    iget-wide v4, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 941
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 951
    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    .line 953
    invoke-direct {p0, v2}, Lcom/android/settings/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 955
    :cond_2
    return-void

    .line 927
    :cond_3
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 940
    goto :goto_1

    .line 947
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 620
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 622
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v3

    .line 623
    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 624
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f0b06e7

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 625
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f0b06e6

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 629
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f0b06e3

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 632
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f0b06e4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 637
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_6

    .line 638
    :goto_2
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 639
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 640
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 642
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    .line 646
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 653
    :cond_3
    :goto_5
    return-void

    .line 626
    :cond_4
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f0b06e5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 636
    goto :goto_1

    :cond_6
    move v1, v2

    .line 637
    goto :goto_2

    .line 638
    :cond_7
    const/16 v2, 0x8

    goto :goto_3

    .line 644
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 647
    :cond_9
    if-eqz v0, :cond_3

    .line 649
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    .line 2257
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2258
    .local v6, conn:Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2261
    .local v10, hasEthernet:Z
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2263
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2274
    .local v8, ethernetBytes:J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2266
    .end local v8           #ethernetBytes:J
    :catch_0
    move-exception v7

    .line 2267
    .local v7, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2270
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8       #ethernetBytes:J
    goto :goto_0

    .line 2274
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 267
    .local v0, context:Landroid/content/Context;
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 269
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 271
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 272
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 276
    new-instance v2, Lcom/android/settings/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/settings/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    .line 277
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/settings/net/NetworkPolicyEditor;->read()V

    .line 280
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 281
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 296
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 299
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    iput-boolean v5, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 301
    iput-boolean v5, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 304
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 305
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 291
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 292
    .restart local v1       #e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 448
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 449
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f04002b

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 314
    .local v2, view:Landroid/view/View;
    new-instance v3, Lcom/android/settings/net/UidDetailProvider;

    invoke-direct {v3, v0}, Lcom/android/settings/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 316
    const v3, 0x1020012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 317
    const v3, 0x7f08005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 318
    const v3, 0x1020013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 319
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 323
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v3

    const/high16 v6, 0x200

    if-ne v3, v6, :cond_1

    move v1, v4

    .line 325
    .local v1, shouldInset:Z
    :goto_0
    iput v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    .line 328
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v2, v3, v5}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 330
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    .line 331
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 333
    const v3, 0x7f040029

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 334
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 336
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6, v8, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 337
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6, v8, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 338
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 340
    iget v3, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    if-lez v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-static {v3, v6}, Lcom/android/settings/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 343
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    iget v7, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v3, v6, v5, v7, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 348
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080059

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 350
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f08005a

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 352
    new-instance v3, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 353
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v3, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 354
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    .line 358
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v6}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 361
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080050

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 369
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v6, 0x7f080051

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 370
    new-instance v3, Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-direct {v3, v0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    .line 371
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleAdapter:Lcom/android/settings/DataUsageSummary$CycleAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 372
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 374
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080047

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    .line 375
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 376
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3, v8}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 380
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v6, 0x7f080052

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 381
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f08000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 382
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080053

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 383
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080056

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/PieChartView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppPieChart:Lcom/android/settings/widget/PieChartView;

    .line 384
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080054

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 385
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080055

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 386
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080058

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 388
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v6, 0x7f080057

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 389
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/DataUsageSummary;->mAppSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    new-instance v3, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    .line 392
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 393
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 394
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;

    invoke-static {p1, v3, v5}, Lcom/android/settings/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 395
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 396
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 397
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mUsageSummary:Landroid/widget/TextView;

    .line 402
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 404
    new-instance v3, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    iget v5, p0, Lcom/android/settings/DataUsageSummary;->mInsetSide:I

    invoke-direct {v3, v4, v5}, Lcom/android/settings/DataUsageSummary$DataUsageAdapter;-><init>(Lcom/android/settings/net/UidDetailProvider;I)V

    iput-object v3, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    .line 405
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 406
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary;->mAdapter:Lcom/android/settings/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    return-object v2

    .end local v1           #shouldInset:Z
    :cond_1
    move v1, v5

    .line 323
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 570
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 571
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 573
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings/net/UidDetailProvider;->clearCache()V

    .line 574
    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings/net/UidDetailProvider;

    .line 576
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "appDetails"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 583
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 584
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v6

    .line 565
    :goto_0
    return v7

    .line 510
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 511
    :goto_1
    if-eqz v0, :cond_1

    .line 512
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmDataRoamingFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 510
    goto :goto_1

    .line 515
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->setDataRoaming(Z)V

    goto :goto_0

    .line 520
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v7

    .line 521
    :goto_2
    if-eqz v0, :cond_3

    .line 522
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    goto :goto_0

    :cond_2
    move v0, v6

    .line 520
    goto :goto_2

    .line 525
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v7

    .line 531
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/settings/DataUsageSummary;->setMobilePolicySplit(Z)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 533
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_5

    move v6, v7

    :cond_5
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    .line 538
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 539
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 540
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 544
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_6

    move v6, v7

    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    .line 545
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 547
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    goto/16 :goto_0

    .line 551
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 552
    const-class v1, Lcom/android/settings/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b0709

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 557
    :pswitch_6
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 558
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip global sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 560
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    if-nez v0, :cond_8

    move v6, v7

    :cond_8
    invoke-static {p0, v6}, Lcom/android/settings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->show(Lcom/android/settings/DataUsageSummary;Z)V

    goto/16 :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x7f080219
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 454
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 455
    .local v0, appDetailMode:Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v11

    if-nez v11, :cond_1

    move v4, v9

    .line 457
    .local v4, isOwner:Z
    :goto_0
    const v11, 0x7f080219

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    .line 458
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-nez v0, :cond_2

    move v11, v9

    :goto_1
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 459
    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuDataRoaming:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->getDataRoaming()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 461
    const v11, 0x7f08021a

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 462
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v11, v9

    :goto_2
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v12}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 466
    const v11, 0x7f08021c

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    .line 467
    iget-object v11, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v12

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 468
    iget-object v12, p0, Lcom/android/settings/DataUsageSummary;->mMenuAutoSync:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v11, v9

    :goto_3
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    const v11, 0x7f08021b

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 471
    .local v8, split4g:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    move v11, v9

    :goto_4
    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->isMobilePolicySplit()Z

    move-result v11

    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 474
    const v11, 0x7f08021d

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 475
    .local v7, showWifi:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 476
    if-nez v0, :cond_6

    move v11, v9

    :goto_5
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 477
    iget-boolean v11, p0, Lcom/android/settings/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 482
    :goto_6
    const v11, 0x7f08021e

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 483
    .local v6, showEthernet:Landroid/view/MenuItem;
    invoke-virtual {p0, v1}, Lcom/android/settings/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 484
    if-nez v0, :cond_8

    move v11, v9

    :goto_7
    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 485
    iget-boolean v11, p0, Lcom/android/settings/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 490
    :goto_8
    const v11, 0x7f08021f

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 491
    .local v5, metered:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 492
    :cond_0
    if-nez v0, :cond_a

    :goto_9
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 497
    :goto_a
    const v9, 0x7f080220

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 499
    .local v2, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0b0788

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, helpUrl:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 500
    invoke-static {v1, v2, v3}, Lcom/android/settings/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 504
    :goto_b
    return-void

    .end local v2           #help:Landroid/view/MenuItem;
    .end local v3           #helpUrl:Ljava/lang/String;
    .end local v4           #isOwner:Z
    .end local v5           #metered:Landroid/view/MenuItem;
    .end local v6           #showEthernet:Landroid/view/MenuItem;
    .end local v7           #showWifi:Landroid/view/MenuItem;
    .end local v8           #split4g:Landroid/view/MenuItem;
    :cond_1
    move v4, v10

    .line 455
    goto/16 :goto_0

    .restart local v4       #isOwner:Z
    :cond_2
    move v11, v10

    .line 458
    goto/16 :goto_1

    :cond_3
    move v11, v10

    .line 462
    goto/16 :goto_2

    :cond_4
    move v11, v10

    .line 468
    goto/16 :goto_3

    .restart local v8       #split4g:Landroid/view/MenuItem;
    :cond_5
    move v11, v10

    .line 471
    goto/16 :goto_4

    .restart local v7       #showWifi:Landroid/view/MenuItem;
    :cond_6
    move v11, v10

    .line 476
    goto :goto_5

    .line 479
    :cond_7
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_6

    .restart local v6       #showEthernet:Landroid/view/MenuItem;
    :cond_8
    move v11, v10

    .line 484
    goto :goto_7

    .line 487
    :cond_9
    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8

    .restart local v5       #metered:Landroid/view/MenuItem;
    :cond_a
    move v9, v10

    .line 492
    goto :goto_9

    .line 494
    :cond_b
    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a

    .line 502
    .restart local v2       #help:Landroid/view/MenuItem;
    .restart local v3       #helpUrl:Ljava/lang/String;
    :cond_c
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_b
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 417
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 421
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary;->updateTabs()V

    .line 424
    new-instance v1, Lcom/android/settings/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DataUsageSummary$1;-><init>(Lcom/android/settings/DataUsageSummary;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DataUsageSummary$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 444
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .parameter "restrictBackground"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 902
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 903
    return-void
.end method
