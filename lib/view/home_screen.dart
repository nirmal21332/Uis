import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 100.h,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back!',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 18.sp,
                              ),
                            ),

                            SizedBox(height: 4.h),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications_outlined,
                            color: Colors.deepPurple,
                            size: 28.r,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverAppBar(
            expandedHeight: 180.h,
            backgroundColor: Colors.deepPurple,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(
                vertical: 10.h,
                horizontal: 20.w,
              ),

              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\$5,270.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    'Current Balance',
                    style: TextStyle(color: Colors.white70, fontSize: 16.sp),
                  ),
                ],
              ),
              centerTitle: false,
              title: Text('Wallet', style: TextStyle(color: Colors.white)),
            ),
          ),

          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 140.h,
            toolbarHeight: 140.h,

            pinned: true,
            elevation: 0.5,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Quick actions',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildQuickAction(icon: Icons.send, label: 'Send'),
                        _buildQuickAction(
                          icon: Icons.receipt,
                          label: 'Request',
                        ),
                        _buildQuickAction(icon: Icons.add, label: 'Top up'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return _buildTransactionTile(
                title: 'Transaction $index',
                subTitle: 'Details of transaction $index',
                amount: (index.isEven ? '+' : '-') + '\$${(index + 1) * 20}',
                isPositive: index.isEven,
              );
            }, childCount: 20),
          ),

          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb_outline,
                  size: 64.r,
                  color: Colors.deepPurple,
                ),
                SizedBox(height: 16.h),
                Text(
                  'Explore New Features',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Stay tunned for exciting updates and improvement',
                  style: TextStyle(fontSize: 16.sp, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 12.h,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Learn More',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction({required IconData icon, required String label}) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: Colors.deepPurple.withOpacity(0.1),
          child: Icon(icon, color: Colors.deepPurple, size: 30.sp),
        ),
        SizedBox(height: 8.h),
        Text(label, style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }

  Widget _buildTransactionTile({
    required String title,
    required String subTitle,
    required String amount,
    required bool isPositive,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple.withOpacity(0.1),
            child: Icon(
              isPositive ? Icons.arrow_upward : Icons.arrow_downward,
              color: isPositive ? Colors.green : Colors.red,
            ),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(subTitle),
          trailing: Text(
            amount,
            style: TextStyle(
              color: isPositive ? Colors.green : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
